<?php

    namespace App\Models\Statical ;

    class Role {

        const NAME = 'name';
        const ID = "id";
        /** @var string SuperAdmin status string */
        const SUPERADMIN = 'superadmin';
        /** @var int SuperAdmin status id */
        const SUPERADMIN_ID = 1;

        /** @var string Admin status string */
        const ADMIN = 'admin';
        /** @var int Admin status id */
        const ADMIN_ID = 2 ;

        /** @var string Operator status string */
        const OPERATOR = 'operator';
        /** @var int Operator status id */
        const OPERATOR_ID = 3;

        /** @var string Client status string */
        const USER = 'user';
        /** @var int Client status id */
        const USER_ID = 4;

        public static function getSuperAdminRole(){
            return [
                static::NAME => static::SUPERADMIN,
                static::ID   => static::SUPERADMIN_ID
            ];
        }

        public static function getAdminRole() {
            return [
                static::NAME => static::ADMIN,
                static::ID   => static::ADMIN_ID
            ];
        }

        public static function getOperatorRole() {
            return [
                static::NAME => static::OPERATOR,
                static::ID   => static::OPERATOR_ID
            ];
        }

        public static function getUserRole() {
            return [
                static::NAME => static::USER,
                static::ID   => static::USER_ID
            ];
        }
    }