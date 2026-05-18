<?php 


function People() {
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);
include '../admin/JustUncorked.php';

$user_name = 'a080cyberlearner_FLNHG';
$password = 'ea}ZrpN!Jb09';
$database = 'a080cyberlearner_Nurses'; //this would be the default schema in workbench
$server = 'localhost';

// Create connection
$db_handle = mysqli_connect($server,$user_name,$password,$database);
// Check connection
if ($db_handle->connect_error) {
  die("Connection failed: " . $db_handledb_handle->connect_error);
}

$SQL = "SELECT FirstName, LastName FROM ContactForm";
// $result = $db_handle->query($sql);
$result = mysqli_query($db_handle, $SQL);

		while($db_field = mysqli_fetch_assoc($result)) {
			$firstName = $db_field['FirstName'];
			$lastName = $db_field['LastName'];
			
			echo "<span>". $firstName. " " .$lastName  ."</span>";
			}
$db_handle->close();
}
?>

<table width="100%">
	<tr>
		<td width="100%">
			Personal Donors<br><br>
			
			<marquee direction="right" width="100%" scrollamount="15">
				<span>Bark Family</span>
				<span>Miller Family</span>
				<span>Zeth Family</span>
				<span>Herren Family</span>
				<span>Pieters Family</span>
				<span>Seregeant Family</span>
			</marquee>
		</td>
	</tr>
	<tr>
		<td>
			<br>Sponor Ships
			
			<marquee direction="right" width="100%" scrollamount="15">
				<? echo People();?>
			</marquee>
		</td>
	</tr>
	<tr>
		<td>
			<br>Community Donations
				<marquee direction="right" width="100%" scrollamount="15">
				<span>Seneca Falls Rotary</span>
				<span>Sons American Legion</span>
				<span>Canandaigua Rotary</span>
				<span>American Legion Auxiliary</span>
				<span>Harper Family Farms</span>
			</marquee>
			
		</td>
	</tr>

</table>