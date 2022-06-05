<?php 

namespace wbw\REST\Handlers;

use wbw\REST\HandlerCore;
class OptionsHandler
{

    public function __construct()
    {
        $this->handlerCore = new HandlerCore;
    }

    public function post_wbw_backup_handler($request)
    {
        global $wbw_dbg;

        $wbw_dbg->debug_log("backup handler called");

        global $wpdb;
        global $wbw_db_version;
        global $wbw_submissions_table_name;
        global $wbw_service_bodies_table_name;
        global $wbw_service_bodies_access_table_name;
        global $wbw_options;
        $charset_collate = $wpdb->get_charset_collate();
    
        $save = array();
        // get options
        $optarr = wp_load_alloptions();
        $saveoptarr = array();
        foreach ($optarr as $key => $value)
        {
            $found = array_search($key, $wbw_options);

            if ($found == true)
            {
                $wbw_dbg->debug_log("found ".$key);
                $saveoptarr[$key]=$value;
            }
        }
        $save['options']=$saveoptarr;

        // get submissions
        $result = $wpdb->get_results("SELECT * from ". $wbw_submissions_table_name);
        $save['submissions']=$result;

        // get service bodies
        $result = $wpdb->get_results("SELECT * from ". $wbw_service_bodies_table_name);
        $save['service_bodies']=$result;

        // get service bodies access
        $result = $wpdb->get_results("SELECT * from ". $wbw_service_bodies_access_table_name);
        $save['service_bodies_access']=$result;

        $wbw_dbg->debug_log(json_encode($save, JSON_PRETTY_PRINT));



        return $this->handlerCore->wbw_rest_success('Backup completed.');

    }
}