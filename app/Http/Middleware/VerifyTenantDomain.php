<?php

    namespace App\Http\Middleware;

    use Closure;
    use Exception;
    use Illuminate\Http\Request;
    use Hyn\Tenancy\Facades\Tenant;

    use App\Models\Instance;
    
    class VerifyTenantDomain
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
            try {
                // $hostname = $request->getHost();
                // $subdomain = explode(config('global.TENANCY_DEFAULT_HOSTNAME'),$hostname);
                // if ( count($subdomain) < 2 || !$this->isValidTenant($subdomain[0])){
                //     return response()->json([
                //         'status' => 'failed',
                //         'message' => __('messages.Not_Allowed_Request')
                //     ]);
                // }
                return $next($request);
            } catch (Exception $e) {
                return response()->json([
                    'status' => 'failed',
                    'message' => $e->getMessage()
                ],401);
            }

        }

        protected function isValidTenant($subdomain)
        {
            if ( Instance::where('name',$subdomain)->exists()) return true;
            return false;
        }
    }
