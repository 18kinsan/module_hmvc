<?php

namespace Modules\Module\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Module\Entities\Module;
use App\RecordsModel;
use App\TableModel;


class ModuleController extends Controller
{
    public function index()
    {
        $data = TableModel::all();
        return view('module::index', compact('data'));
    }
    
    public function store(Request $request)
    {
        $module = Module::create($request->all());

        return response()->json($module, 201);
    }

    public function show($id)
    {
        $module = Module::findOrFail($id);

        return response()->json($module);
    }

    public function update(Request $request, $id)
    {
        $module = Module::findOrFail($id);
        $module->update($request->all());

        return response()->json($module, 200);
    }

    public function destroy($id)
    {
        Module::destroy($id);

        return response()->json(null, 204);
    }
}