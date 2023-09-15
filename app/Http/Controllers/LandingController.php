<?php

    namespace App\Http\Controllers;

    use App\Http\Controllers\FunctionController;

    class LandingController extends FunctionController{
        public function __construct() {
            parent::__construct();
        }
        public function index() {
            return view('templates/auth.core');
        }
    }
?>
