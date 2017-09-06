<?php
require_once dirname(__FILE__).'/source/CAS.php';
header("Content-Type: text/html; charset=UTF-8");
//
// phpCAS simple client
//
//phpCAS::setDebug();
// initialize phpCAS
phpCAS::client(CAS_VERSION_2_0,'cas.bnu.edu.cn',80,'cas');
// no SSL validation for the CAS server
phpCAS::setNoCasServerValidation();
// force CAS authentication
phpCAS::forceAuthentication();
// at this step, the user has been authenticated by the CAS server
// and the user's login name can be read with phpCAS::getUser().
// logout if desired
if (isset($_REQUEST['logout'])) {
 $param=array("service"=>"http://localhost/neusoftphpcas/neusoftcas.php");//退出登录后返回
 phpCAS::logout($param);
}
// for this test, simply print that the authentication was successfull
?>
<html>
  <head>
    <title>phpCAS simple client</title>
  </head>
  <body>
    <h1>Successfull Authentication!</h1>
    <p>当前登录用户：<b><?php echo phpCAS::getUser(); ?></b>.</p>
    <p>CAS返回的属性：<b><br><?php 
		$attrs =  phpCAS::getAttributes(); 
		foreach($attrs as $key => $value){
			echo $key."=".$value."<br>" ;
		}
	?></b>.</p>
     <p><a href="?logout=">退出</a></p>
  </body>
</html>