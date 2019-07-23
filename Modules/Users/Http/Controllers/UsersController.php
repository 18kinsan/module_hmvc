<?php

namespace Modules\Users\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Modules\Users\Entities\Users;
use App\RecordsModel;
use App\TableModel;

class UsersController extends Controller
{
    public function index()
    {
        return view('users::index');
    }

    public function login(Request $request){
        // dd(\Auth::attempt(['email'=>$request->email, 'password'=>$request->password]));
        if(!\Auth::attempt(['email'=>$request->email, 'password'=>$request->password])){
            return redirect()->back()->with('pesan', 'Login Gagal');  
        };
        return redirect('/module');

            
    }

    public function register(){
        Users::create([
            'id' => 1,
            'email' => 'admin@indoit.com',
            'password' => bcrypt('helloworld'),
        ]);

        return redirect('/backend');
    }

    public function logout(){
        \Auth::logout();

        return redirect('/backend');
    }

}