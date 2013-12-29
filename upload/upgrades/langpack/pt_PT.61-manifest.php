<?php

// manifest file for information regarding application of new code
$manifest = array(

    // only install on the following sugar versions (if empty, no check)
    array (
        'exact_matches' => array (
        ),
        'regex_matches' => array (
            0 => '6\.1\.0',
            1 => '6\.0\.*'
        ),
    ),

    // Version for which this langpack can work
    'acceptable_sugar_flavors' => array (
        0 => 'CE',
    ),

    // Name of the Pack
    'name' => 'Tradução para Português do SugarCRM',
    'id'=> 'DRI_PT',
    'lang_file_suffix' => 'pt_PT',

    // Description of new code
    'description' => 'Tradução do SugarCRM para a versão 6.1',

    // Author of new code
    'author' => 'www.dri.pt',

    // Date published
    'published_date' => '2010/12/17',

    // Version of code
    'version' => '610-17DEZ2010',

    'type' => 'langpack',
    // Uninstall is allowed
    'is_uninstallable' => true,
);

?>
