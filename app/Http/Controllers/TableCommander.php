<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use App\DatatypesModel;
use App\TableModel;
use Illuminate\Support\Facades\Input;
use App\RecordsModel;

class TableCommander extends Controller
{
    public function form()
    {
        $data = DatatypesModel::all();
        return view('form', compact('data'));
    }

    public function getJson()
    {
        $data = DatatypesModel::all();
        return json_encode($data);
    }

    public function checkContent(Request $request)
    {
        $input = Input::all();

        $table = new TableModel();
        $table->table_name = $request->tablename;
        $table->save();

        foreach ($input['tablecolumns'] as $tbrow) {
            $record = new RecordsModel();
            $record->table_id = $table->id;
            $record->columnname = $tbrow['columnname'];
            $record->displayname = $tbrow['displayname'];
            $record->length = $tbrow['length'];
            $record->datatype = $tbrow['datatype'];

            $record->save();
        }

        $this->tableSchema($request, $input);
        $this->crudCommand($request, $input);
        $this->bladeCommand($request, $input);

        return redirect('/'.strtolower($request->modulename));
    }

    private function tableSchema(Request $request, $input)
    {
        Schema::create($request->tablename, function (Blueprint $table) {
            $input = Input::all();
            foreach ($input['tablecolumns'] as $row) {
                if ($row['columnname'] == 'id') {
                    $table->increments('id');
                }

                else {
                    if ($row['datatype'] == 'integer') {
                        $table->integer($row['columnname'])->unsigned()->length($row['length']);
                    }

                    else {
                        $table->{$row['datatype']}($row['columnname'])->length($row['length']);
                    }
                }
            }
        });
    }

    private function crudCommand(Request $request, $input)
    {
        $modulenameArr = [$request->modulename];
        \Artisan::call('module:make', [
            'name' => $modulenameArr
        ]);

        \Artisan::call('crud:generator', [
            'name' => $request->modulename,
            'table' => $request->tablename,
        ]);
    }

    public function bladeCommand(Request $request, $input)
    {
        $inputArr = array();
        foreach($input['tablecolumns'] as $throw) {
            $inputArr[] = $throw['displayname'];
        }

        \Artisan::call('blade:generator', [
            'name' => $request->modulename,
            'fields' => $inputArr
        ]);
    }
}
