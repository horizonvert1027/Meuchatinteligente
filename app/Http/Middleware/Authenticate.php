<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\FunctionController;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    
    public function handle($request, Closure $next, ...$guards)
    {
        if ( ! isset($request->header()['authorization']) ){
            return response()->json([
                'status' => 'failed',
                'message' => __('messages.Un_Authorization')
            ],401);
        }
        $token = $request->header()['authorization'];
        return $next($request);
        if(Auth::onceUsingId($token)) {
            return $next($request);
        } else {
            return response()->json([
                'status' => 'failed',
                'message' => __('messages.Un_Authorization')
            ],401);
        }
    }
}
