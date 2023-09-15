<?php
    namespace App\Services;

    use App\Models\Statical\Role;
    use Exception;

    class Permission {

        /** @var array all of all the permissions in system
         * Example for common CRUD: [
         *  'operations.create',
         *  'operations.read',
         *  'operations.update',
         *  'operations.delete',
         * ]
        */
        protected static $all = [
            'users.read',
            'users.create',
            'users.store',
            'users.edit',
            'users.delete',

            'tenant.create',
            'tenant.read',
            'tenant.store',
            'tenant.edit',
            'tenant.delete'
        ];

        protected static $list =[
            Role::SUPERADMIN => [
                static::$all
            ],
            Role::ADMIN => [
                'users.read',
                'tenant.read'
            ],
            Role::OPERATOR => [
                'user.read',
                'tenant.read'
            ]
        ];

        public static function granted($permission, $profile = null ){
            if ( !in_array($permission, static::$all) ){
                throw new Exception("Permission not found: '$permission'");
            }

            $profile = $profile ? $profile : auth()->user();
            if ( $profile->role == Role::SUPERADMIN){
                return true;
            } else if ( $profile->role == Role::ADMIN ){
                if ( in_array($permission , self::$list[Role::ADMIN]) ){
                    return true ;
                }
                return false ;
            }
            false;
        }
    }