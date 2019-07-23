<?php

namespace Modules\Orang\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Orang\Entities\Orang;
use App\RecordsModel;
use App\TableModel;

class OrangController extends Controller
{
    public function index()
    {
        $tablelists = TableModel::where('table_name', 'Orang')->first();
        $records = RecordsModel::where('table_id', $tablelists->id)->get();
        return view('orang::index', compact('records'));
    }

    public function store(Request $request)
    {
        $orang = Orang::create($request->all());

        return response()->json($orang, 201);
    }

    public function show($id)
    {
        $orang = Orang::findOrFail($id);

        return response()->json($orang);
    }

    public function update(Request $request, $id)
    {
        $orang = Orang::findOrFail($id);
        $orang->update($request->all());

        return response()->json($orang, 200);
    }

    public function destroy($id)
    {
        Orang::destroy($id);

        return response()->json(null, 204);
    }
}