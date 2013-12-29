<?PHP

$manifest = array(
    'acceptable_sugar_versions' => array("regex_matches" => array("6.*")),
    'name' => 'ZuckerReports2 - Jasper-4.0.0',
    'description' => 'ZuckerReports2 - Jasper-4.0.0 Libraries',
    'author' => 'ZuckerFriends GmbH',
    'published_date' => '2012/06/14',
    'version' => '2.0',
    'type' => 'module',
    'icon' => 'include/images/ZuckerReports.gif',
	'is_uninstallable' => 'true',

);

$installdefs = array(
	'id'=> 'ZuckerReports2Jasper400',
	'copy' => array(
			array('from'=> '<basepath>/jasper/',
		  	'to'=> 'modules/zr2_Report/jasper/',
			),
	),
);
?>
