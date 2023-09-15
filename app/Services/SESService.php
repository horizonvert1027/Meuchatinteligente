<?php
    namespace App\Services;

    use Aws\Ses\SesClient;

    class SESService {
        protected $ses;
        protected $domain;

        public function __construct()
        {
            $this->ses = new SesClient([
                'version' => 'latest',
                'region' => config('services.ses.region'),
                'credentials' => [
                    'key' => config('services.ses.key'),
                    'secret' => config('services.ses.secret')
                ]
            ]);
            $this->domain = config('global.APP_DOMAIN');
        }

        public function sendVerificationEmail($email, $verificationCode){
            $params = [
                'Source' => 'superadmin@klustering.io',
                'Destination' => [
                    'ToAddresses' => [$email]
                ],
                'Message' => [
                    'Subject' => [
                        'Data' => 'Email Verification'
                    ],
                    'Body' => [
                        'Text' => [
                            'Data' => 'Your verification code is: '.$verificationCode
                        ]
                    ]
                ]
            ];
            $this->ses->sendEmail($params);
        }
        public function sendCreatedPanelEmail($user,$subdomain){
            $params = [
                'Source' => 'superadmin@klustering.io',
                'Destination' => [
                    'ToAddresses' => [$user->email]
                ],
                'Message' => [
                    'Subject' => [
                        'Data' => "$subdomain Panel was created from Klustering!"
                    ],
                    'Body' => [
                        'Html' => [
                            'Data' => '<h2>Welcome '.$user->firstname.' '.$user->lastname.'</h2><p>Your '.$subdomain.' klustering panel was created successful</p>' .
                                '<p>Here is panel url : <a href="' . url($subdomain.'.'.$this->domain) . '">Reset Password</a></p>' .
                                '<p>If you did not request a password reset, no further action is required.</p>',
                        ],
                    ]
                ]
            ];
            $this->ses->sendEmail($params);
        }
    }