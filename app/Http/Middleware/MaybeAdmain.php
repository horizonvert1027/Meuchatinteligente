<?php

namespace App\Http\Middleware;

use App\Models\Statical\Role;
use Closure;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class MaybeAdmain
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if ( $user->role == Role::USER){
            return response()->json([
                'status' => 'failed',
                'message' => __('messages.Not_Admin')
            ]);
        }
        return $next($request);
    }
}
