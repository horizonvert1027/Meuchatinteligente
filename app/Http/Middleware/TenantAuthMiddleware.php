<?php

namespace App\Http\Middleware;

use App\Http\Controllers\Helper\KlusteringAuth;
use Closure;
use Illuminate\Http\Request;

class TenantAuthMiddleware
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
        if ( ! isset($request->header()['authorization']) ){
            return response()->json([
                'status' => 'failed',
                'message' => __('messages.Un_Authorization')
            ],401);
        }
        else {
            $header = $request->header()['authorization'][0];
            $token = KlusteringAuth::validate($header);
            if ( $token['type'] ){
                return response()->json([
                    'status' => 'failed',
                    'message' => __($token['result'])
                ]);
            }
        }
        return $next($request);
    }
}
