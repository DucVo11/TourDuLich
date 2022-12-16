<?php

/**
 * This file is part of Laravel Entrust,
 * Handle Role-based Permissions for Laravel.
 *
 * @license     MIT
 * @package     Shanmuga\LaravelEntrust
 * @category    Middleware
 * @author      Shanmugarajan
 */

namespace Shanmuga\LaravelEntrust\Middleware;

class LaravelEntrustRole extends LaravelEntrustMiddleware
{
    /**
     * Handle incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Closure $next
     * @param  string  $roles
     * @param  mixed  $options
     * @return mixed
     */
    public function handle($request, \Closure $next, $roles, ...$options)
    {
        if (!is_array($roles)) {
            $roles = explode(self::DELIMITER, $roles);
        }

        if (!$this->authorization('roles', $roles,$options)) {
            return $this->unauthorized();
        }

        return $next($request);
    }
}