<?php

    namespace App\Http\Middleware;

    use Closure;
    use Tymon\JWTAuth\Facades\JWTAuth;
    use Exception;
    use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;

    class JwtMiddleware
    {

        /**
         * Handle an incoming request.
         *
         * @param  \Illuminate\Http\Request  $request
         * @param  \Closure  $next
         * @return mixed
         */
        public function handle($request, Closure $next)
        {
            try {
                $user = JWTAuth::parseToken()->authenticate();
                return $next($request);
            } catch (Exception $e) {
                if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                    return response()->json([
                        'status' => 'failed',
                        'message' => __('messages.Token_Invalid')
                    ],401);
                }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                    return response()->json([
                        'status' => 'failed',
                        'message' => __('messages.Token_Invalid')
                    ],401);
                }else{
                    return response()->json([
                        'status' => 'failed',
                        'message' => __('messages.Un_Authorization')
                    ],401);
                }
            }
        }
    }

