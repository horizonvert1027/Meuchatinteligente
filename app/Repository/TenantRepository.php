<?php
    namespace App\Repository;
    use App\Models\Tenant;
    use Illuminate\Support\Facades\DB;
    use Illuminate\Support\Str;
    use App\Events\TenantCreated;
    // use Hyn\Tenancy\Contracts\Repositories\HostnameRepository ;
    // use Hyn\Tenancy\Contracts\Repositories\WebsiteRepository ;
    // use Hyn\Tenancy\Models\Website;
    // use Hyn\Tenancy\Models\Hostname;
    // use Hyn\Tenancy\Environment;
    // use Illuminate\Support\Facades\Hash;

    class TenantRepository
    {
        public function create(Tenant &$tenant): Tenant
        {
            // $website = new Website;
            // $website->uuid = $this->subdomain;
            // app(WebsiteRepository::class)->create($website);

            // $hostname = new Hostname;
            // $hostname->fqdn = $this->domain;
            // $hostname = app(HostnameRepository::class)->create($hostname);
            // app(HostnameRepository::class)->attach($hostname, $website);

            // // Switch to the tenant's environment
            // $tenancy = app(Environment::class);
            // $tenancy->tenant($website);

            // // Create a user for the tenant
            // DB::connection('tenant')->table('users')->insert([
            //     'email' => $this->email,
            //     'password' => bcrypt($this->password)
            // ]);
            TenantCreated::dispatch($tenant,"creating");

            // Create new database and user for the tenant
            $database = "tenant_" . $tenant->domain;
            $username = "user_" . $tenant->domain;
            $password = Str::random(16);
        
            DB::connection('system')->statement("CREATE DATABASE IF NOT EXISTS `$database`");
            DB::connection('system')->statement("CREATE USER IF NOT EXISTS `$username`@`%` IDENTIFIED WITH mysql_native_password BY '$password'");
            DB::connection('system')->statement("GRANT ALL PRIVILEGES ON `$database`.* TO `$username`@`%`");
        
            // Set the database and username for the tenant
            $tenant->database = $database;
            $tenant->username = $username;
            $tenant->password = $password;
            TenantCreated::dispatch($tenant,"created");        
            return $tenant;
        }
        public function delete(Tenant &$tenant)
        {
            TenantCreated::dispatch($tenant,'deleting');

            // Delete the tenant's database and user
            $database = $tenant->database;
            $username = $tenant->username;
            $password = $tenant->password;
            DB::connection('system')->statement("DROP DATABASE IF EXISTS `$database`");
            DB::connection('system')->statement("DROP USER IF EXISTS `$username`@`%`");

            $success = $tenant->delete();
            TenantCreated::dispatch($tenant,'deleted');
            return $success;
        }

        public function update(Tenant &$tenant): Tenant
        {
            TenantCreated::dispatch($tenant, 'updating');

            // Update the tenant's database and user credentials
            $database = $tenant->database;
            $username = $tenant->username;
            $password = $tenant->password;

            DB::connection('system')->statement("ALTER USER `$username`@`%` IDENTIFIED WITH mysql_native_password BY '$password'");

            TenantCreated::dispatch($tenant, 'updated');
            return $tenant;
        }
    }