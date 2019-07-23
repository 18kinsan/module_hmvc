@extends('users::layouts.master')
@section('content')
<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
    @if (session('pesan'))
        <div class="alert alert-danger">{{session('pesan')}}</div>
    @endif
    <form class="login100-form validate-form" action="{{route('login')}}" method="POST">
        <span class="login100-form-title p-b-33">
            User<span style="color:#4272d7">Login</span>
        </span>

            @csrf
            <div class="wrap-input100 validate-input" data-validate = "Email harus diisi : ex@abc.xyz">
                <input class="input100" type="email" id="email" name="email" placeholder="Email">
                <span class="focus-input100-1"></span>
                <span class="focus-input100-2"></span>
            </div>

            <div class="wrap-input100 rs1 validate-input" data-validate="Password harus diisi">
                <input class="input100" type="password" name="password" id="password" placeholder="Password">
                <span class="focus-input100-1"></span>
                <span class="focus-input100-2"></span>
            </div>

            <div class="container-login100-form-btn m-t-20">
                <button class="login100-form-btn" type="submit">
                    Sign in
                </button>
            </div>
            

        <div class="text-center p-t-45 p-b-4">
            <span class="txt1">
                Forgot
            </span>

            <a href="#" class="txt2 hov1">
                Email / Password?
            </a>
        </div>

    </form>
</div>
@endsection