<?php
// Copyright (C) 2022 nigel.bmlt@gmail.com
// 
// This file is part of bmlt-workflow.
// 
// bmlt-workflow is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// bmlt-workflow is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with bmlt-workflow.  If not, see <http://www.gnu.org/licenses/>.

namespace bmltwf;

if ((!defined('ABSPATH')&&(!defined('BMLTWF_RUNNING_UNDER_PHPUNIT')))) exit; // die if being called directly

class BMLTWF_Rest
{

    public function __construct($stub = null)
    {
        // our rest namespace
        $this->bmltwf_rest_namespace = 'bmltwf/v1';
        $this->bmltwf_submissions_rest_base = 'submissions';
        $this->bmltwf_service_bodies_rest_base = 'servicebodies';
        $this->bmltwf_bmltserver_rest_base = 'bmltserver';
        $this->bmltwf_options_rest_base = 'options';
    }
}
