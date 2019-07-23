@extends('module::layouts.master')
@section('content')
    Akses : {{\Auth::user()->email}}
    <h1>Ini table untuk view Module</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama Module</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $i)
                
            
            <tr>
                <td>
                    {{$i->id}}
                </td>
                <td>
                    {{$i->table_name}}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
<h1><a href="{{url('/backend/logout')}}">LOG OUT</a></h1>
@endsection