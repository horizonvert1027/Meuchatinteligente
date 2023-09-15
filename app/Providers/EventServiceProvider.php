<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

use App\Events\UserSignupRequested;
use App\Listeners\UserSignupLisnter;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;

use Laravel\Cashier\Events\WebhookReceived;
use App\Listeners\StripeEventListener;

use App\Events\SubdomainProcessed;
use App\Listeners\SubdomainNotification;

use App\Events\SaveInstanceProcessed;
use App\Listeners\SaveInstanceNotification;

use App\Events\CaddyServerConfigProcessed;
use App\Listeners\CaddyServerConfigNotification;

use App\Events\DockerComposeProcessed;
use App\Listeners\DockerComposeNotification;


use App\Events\CreateInstanceStatusProcessed;
use App\Listeners\CreateInstanceStatusNotification;

use App\Events\UpdateInstanceStatusProcessed;
use App\Listeners\UpdateInstanceStatusNotification;

use App\Events\DeleteInstanceStatusProcessed;
use App\Listeners\DeleteInstanceStatusNotification;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event to listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        UserSignupRequested::class => [
            UserSignupLisnter::class,
        ],
        WebhookReceived::class => [
            StripeEventListener::class
        ]
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Determine if events and listeners should be automatically discovered.
     *
     * @return bool
     */
    public function shouldDiscoverEvents()
    {
        return false;
    }
}
