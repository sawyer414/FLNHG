<?
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);
?>

<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../myStyles.css">
	<title>Finger Lakes National Honor Gaurd</title>
	<link rel="icon" type="image/x-icon" href="../images/Favicon.png">
</head>
<body>
<div style="height:100%; width:100%;">
	<div colspan="3">
		<div><!--NavBar-->
			<?include '../includes/topNav.php';?>
		</div>
		<div><!--LeftNav-->
			<?include '../includes/leftNav.php';?>
		</div>
		<div><!--Content-->
			<?include 'mainContent.php';?>
		</div>
		<div><!--RightNav-->
			<?include '../includes/rightNav.php';?>
		</div>
		<div><!--Footer-->
			<?include '../includes/footer.php';?>
		</div>
	</div>
</div>

</body>
</html>
<!--
<table style="height:100%; width:100%;">
	<tr><td align="center">
		<table style="height:100%;width:100%;">
			<tr><td colspan="3" align="Center">
				<!--Begin NAVBAR---!>
				<? //include '../includes/topNav.php';?>
				<!--End NavBar--!>
		<!--	</td></tr>
			<tr><td>
				<!--Start leftNav--!>
				<? //include '../includes/leftNav.php';?>
				<!--End leftNav--!>
		<!--	</td><td>
				<!--Start content--!>
				<? //include 'mainContent.php';?>
				<!--End content--!>
		<!--	</td><td>
				<!--Start rightNav--!>
			<? //include '../includes/rightNav.php';?>
				<!--End rightNav--!>
		<!--	</td></tr>
			<tr><td colspan="3">
				<!--Footer Start--!>
			<? //include '../includes/footer.php';?>
				<!--End Footer--!>
		<!--	</td></tr>
		</table>
	</td></tr>
</table>-->