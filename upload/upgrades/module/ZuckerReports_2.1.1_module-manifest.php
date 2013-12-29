<?PHP

$manifest = array(
    'acceptable_sugar_versions' => array("regex_matches" => array("6.*")),
    'name' => 'ZuckerReports2',
    'description' => 'ZuckerReports2',
    'author' => 'ZuckerFriends GmbH',
    'published_date' => '2013/01/03',
    'version' => '2.1.1',
    'type' => 'module',
    'icon' => 'include/images/ZuckerReports.gif',
	'is_uninstallable' => 'true',
);

$installdefs = array(
	'id'=> 'ZuckerReports2',
	'image_dir' => '<basepath>/icons',
	'copy' => array(
			array(
				'from'=> '<basepath>/include/images/ZuckerReports.gif',
				'to'=> 'include/images/ZuckerReports.gif',
			),
			array(
				'from'=> '<basepath>/modules/zr2_ReportContainer',
				'to'=> 'modules/zr2_ReportContainer',
			),
			array(
				'from'=> '<basepath>/modules/zr2_ReportParameter',
				'to'=> 'modules/zr2_ReportParameter',
			),
			array(
				'from'=> '<basepath>/modules/zr2_ReportParameterLink',
				'to'=> 'modules/zr2_ReportParameterLink',
			),
			array(
				'from'=> '<basepath>/modules/zr2_Report',
				'to'=> 'modules/zr2_Report',
			),
			array(
				'from'=> '<basepath>/modules/zr2_ReportTemplate',
				'to'=> 'modules/zr2_ReportTemplate',
			),
			array(
				'from'=> '<basepath>/modules/zr2_QueryTemplate',
				'to'=> 'modules/zr2_QueryTemplate',
			),
			array (
				'from' => '<basepath>/modules/Configurator/ZuckerReports2Config.php',
				'to' => 'custom/modules/Configurator/ZuckerReports2Config.php',
			),
			array (
				'from' => '<basepath>/modules/Configurator/ZuckerReports2Config.tpl',
				'to' => 'custom/modules/Configurator/ZuckerReports2Config.tpl',
			),
			array (
				'from' => '<basepath>/zuckerreports_service/v4',
				'to' => 'custom/ZuckerReports2/service/v4'
			
			),
	),
	'administration' => array (
			array (
				'from' => '<basepath>/modules/Administration/ZuckerReports2Config.php',
			),
	),
	'language'=> array(
			array(
				'from'=> '<basepath>/application/app_strings.en_us.lang.php', 
				'to_module'=> 'application',
				'language'=>'en_us'
			),
			array (
				'from' => '<basepath>/modules/Administration/language/en_us.lang.php',
				'to_module' => 'Administration',
				'language' => 'en_us',
			),
			array (
				'from' => '<basepath>/modules/Configurator/language/en_us.lang.php',
				'to_module' => 'Configurator',
				'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_ReportContainer.php',
				  'to_module' => 'zr2_ReportContainer',
				  'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_Report.php',
				  'to_module' => 'zr2_Report',
				  'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_ReportParameterLink.php',
				  'to_module' => 'zr2_ReportParameterLink',
				  'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_ReportParameter.php',
				  'to_module' => 'zr2_ReportParameter',
				  'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_ReportTemplate.php',
				  'to_module' => 'zr2_ReportTemplate',
				  'language' => 'en_us',
			),
			array (
				  'from' => '<basepath>/relationships/language/zr2_QueryTemplate.php',
				  'to_module' => 'zr2_QueryTemplate',
				  'language' => 'en_us',
			),		),
	'beans'=> array(
			array('module'=> 'zr2_Report',
				  'class'=> 'zr2_Report',
				  'path'=> 'modules/zr2_Report/zr2_Report.php',
				  'tab'=> true,
			),
			array('module'=> 'zr2_ReportContainer',
				  'class'=> 'zr2_ReportContainer',
				  'path'=> 'modules/zr2_ReportContainer/zr2_ReportContainer.php',
				  'tab'=> false,
			),
			array('module'=> 'zr2_ReportParameter',
				  'class'=> 'zr2_ReportParameter',
				  'path'=> 'modules/zr2_ReportParameter/zr2_ReportParameter.php',
				  'tab'=> false,
			),
			array('module'=> 'zr2_ReportParameterLink',
				  'class'=> 'zr2_ReportParameterLink',
				  'path'=> 'modules/zr2_ReportParameterLink/zr2_ReportParameterLink.php',
				  'tab'=> false,
			),
			array('module'=> 'zr2_ReportTemplate',
				  'class'=> 'zr2_ReportTemplate',
				  'path'=> 'modules/zr2_ReportTemplate/zr2_ReportTemplate.php',
				  'tab'=> false,
			),
			array('module'=> 'zr2_QueryTemplate',
				  'class'=> 'zr2_QueryTemplate',
				  'path'=> 'modules/zr2_QueryTemplate/zr2_QueryTemplate.php',
				  'tab'=> false,
			),
	),
	'relationships'=>array(
			array (
				'meta_data' => '<basepath>/relationships/relationships/zr2_reportcontainer_zr2_reportMetaData.php',
			),
			array (
				'meta_data' => '<basepath>/relationships/relationships/zr2_reportparameterlink_zr2_reportparameterMetaData.php',
			),
			array (
				'meta_data' => '<basepath>/relationships/relationships/zr2_reportparameterlink_zr2_reporttemplateMetaData.php',
			),
			array (
				'meta_data' => '<basepath>/relationships/relationships/zr2_reportparameterlink_zr2_querytemplateMetaData.php',
			),
	),
	'dashlets'=>array(
	),
	
	'menu'=> array(
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Accounts',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Contacts',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Leads',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Cases',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Opportunities',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Project',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'ProjectTask',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Quotes',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Bugs',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Tasks',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Emails',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Calls',
		),
		array('from'=> '<basepath>/menu.ext.php',
			  'to_module'=> 'Meetings',
		),
	),
	'layoutdefs' => array (
		array (
		  'from' => '<basepath>/relationships/layoutdefs/zr2_reportcontainer_zr2_report_zr2_ReportContainer.php',
		  'to_module' => 'zr2_ReportContainer',
		),
		array (
		  'from' => '<basepath>/relationships/layoutdefs/zr2_reportparameterlink_zr2_reportparameter_zr2_ReportParameter.php',
		  'to_module' => 'zr2_ReportParameter',
		),
		array (
		  'from' => '<basepath>/relationships/layoutdefs/zr2_reportparameterlink_zr2_reporttemplate_zr2_ReportTemplate.php',
		  'to_module' => 'zr2_ReportTemplate',
		),
		array (
		  'from' => '<basepath>/relationships/layoutdefs/zr2_reportparameterlink_zr2_querytemplate_zr2_QueryTemplate.php',
		  'to_module' => 'zr2_QueryTemplate',
		),
	),
	'vardefs' => array (
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportcontainer_zr2_report_zr2_Report.php',
		  'to_module' => 'zr2_Report',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportcontainer_zr2_report_zr2_ReportContainer.php',
		  'to_module' => 'zr2_ReportContainer',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_reportparameter_zr2_ReportParameterLink.php',
		  'to_module' => 'zr2_ReportParameterLink',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_reportparameter_zr2_ReportParameter.php',
		  'to_module' => 'zr2_ReportParameter',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_reporttemplate_zr2_ReportParameterLink.php',
		  'to_module' => 'zr2_ReportParameterLink',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_reporttemplate_zr2_ReportTemplate.php',
		  'to_module' => 'zr2_ReportTemplate',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_querytemplate_zr2_ReportParameterLink.php',
		  'to_module' => 'zr2_ReportParameterLink',
		),
		array (
		  'from' => '<basepath>/relationships/vardefs/zr2_reportparameterlink_zr2_querytemplate_zr2_QueryTemplate.php',
		  'to_module' => 'zr2_QueryTemplate',
		),
	),
);
?>
