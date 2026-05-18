<?
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ERROR);
	
	$basedir    = '../';

$directories = scandir($basedir);

if (!isset($_GET["action"])) {
	$action = "";
} else {
	$action = $_GET["action"];
}
//this copies it everywhere else that starts
//with a capital letter.  

	
	if($action == 'deploy'){
	foreach($directories as $Value){
		
		echo "<p>" . "Deployed The Template to " . $Value . "</p>". "<br>";
		
		if(ctype_upper(substr($Value,0,1)) == true){
			
			copy("index.php", "$basedir/$Value/index.php");
		
		$filename = "$basedir/$Value/mainContent.php";
		
			if (file_exists($filename)){

			}else{
			$myfile = fopen($filename, "w") or die("Unable to open file!");
			$txt = "";
			fwrite($myfile, $txt);
			}
		
		
		}
	}
}

	
	//connect to the database
$user_name = 'a080cyberlearner_FLNHG';
$password = '4K]3m7HwMx_(';
$database = 'a080cyberlearner_Nurses'; //this would be the default schema in workbench
$server = 'localhost';

// Create connection
$db_handle = mysqli_connect($server,$user_name,$password,$database);
	
	function InsertEntryOne($Name,$LastName) {
		global $db_handle;
		
		$SQL = "INSERT INTO SingleSponsers(Name,LastName) VALUES('".$Name."','".$LastName."')";
		
		$result = mysqli_query($db_handle, $SQL);
		
	}
	
	function ReportEntriesOne() {
		global $db_handle;
		
		$SQL = "SELECT ID,Name,LastName FROM SingleSponsers";
		
		$results = mysqli_query($db_handle, $SQL);
		while($db_handle = mysqli_fetch_assoc($results)) {
			$Name = $db_handle['Name'];
			$LastName = $db_handle['LastName'];
		}
		
	}
	
	$formAction = $_POST['formAction'];
	$Name = $_POST['Name'];
	$LastName = $_POST['LastName'];
	$FormType = $_POST['SponsorType'];
	
	
	if($formAction == 'updateRecord') {
		InsertEntryOne($Name,$LastName);
	}
	
	
	
	if($FormType == 'Single') {
		?>
		
<!DOCKTYPE html>
<html>
	<head>
		<title>Sponsor Entry Page</title>
	</head>
	<body>
		<table width="100%" >
			<tr>
				<td align="center">
					<?
						if($Name == '' OR $LastName) {
							$formAction = '';
						}
						
						if($formAction == ''){
					?>
							<form name="Sponsor" action="" method="post">
							<input type="hidden" value="<?PHP echo $Name;?>">
							<input type="hidden" value="<?PHP echo $LastName;?>">
							<input type="hidden" value="updateRecord" name="formAction">
							<table>
								<tr>
									<td colspan="2">Put the first and last name of your Sponsor here.</td>
								</tr>
								<tr>
									<td>First Name:</td>
									<td>
										<input type="Text" value="<?echo $Name?>" name="Name">
									</td>
								</tr>
								<tr>
									<td>Last Name:</td>
									<td>
										<input type="Text" value="<?echo $LastName?>" name="LastName">
									</td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit"></td>
								</tr>
							</table>
							</form>
						<?}
							ReportEntriesOne();
						?>
						
				</td>
			</tr>
		</table>
	</body>
</html>
		
		<?
	}
	
		
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ERROR);
	include '../admin/JustUncorked.php';
	
	
	//connect to the database
$user_name = 'a080cyberlearner_FLNHG';
$password = '4K]3m7HwMx_(';
$database = 'a080cyberlearner_Nurses'; //this would be the default schema in workbench
$server = 'localhost';

// Create connection
$db_handle = mysqli_connect($server,$user_name,$password,$database);
	
	function ToInsertEntry($Community) {
		global $db_handle;
		
		$SQL = "INSERT INTO GroupSponsers(Community) VALUES('".$Community."')";
		
		$result = mysqli_query($db_handle, $SQL);
		
	}
	
	function ToReportEntries() {
		global $db_handle;
		
		$SQL = "SELECT ID,Community FROM GroupSponsers";
		
		$results = mysqli_query($db_handle, $SQL);
		while($db_handle = mysqli_fetch_assoc($results)) {
			$Community = $db_handle['Community'];
		}
		
	}
	
	$formAction = $_POST['formAction'];
	$Community = $_POST['Community'];
	$FormType = $_POST['SponsorType'];
	$Tribute = $_POST['Tribute'];
	
	
	if($formAction == 'updateRecord') {
		ToInsertEntry($Community);
	}
	
		if($FormType == 'Group') {
	
	?>
		<html>
	<head>
		<title>Sponsor Entry Page</title>
	</head>
	<body>
		<table width="100%" >
			<tr>
				<td align="center">
					<?
						if($Community) {
							$formAction = '';
						}
						
						if($formAction == ''){
					?>
							<form name="Sponsor" action="" method="post">
							<input type="hidden" value="<?PHP echo $Community;?>">
							<input type="hidden" value="updateRecord" name="formAction">
							<table>
								<tr>
									<td colspan="2">Put the Group sponsor here:</td>
								</tr>
								<tr>
									<td>Group Name:</td>
									<td>
										<input type="Text" value="<?echo $Community?>" name="Community">
									</td>
								</tr>
								<tr>
								<tr>
									<td colspan="2"><input type="submit"></td>
								</tr>
							</table>
							</form>
						<?}
							ReportEntries();
						?>
						
				</td>
			</tr>
		</table>
	</body>
</html>
	
	
	<?
	
}
	
?>
		<!--
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);

$user_name = 'a080cyberlearner_FLNHG';
$password = '4K]3m7HwMx_(';
$database = 'a080cyberlearner_Nurses'; //this would be the default schema in workbench
$server = 'localhost';

// Create connection
$db_handle = mysqli_connect($server,$user_name,$password,$database);
// Check connection
if ($db_handle->connect_error) {
  die("Connection failed: " . $db_handledb_handle->connect_error);
}

$db_handle = mysqli_connect($server,$user_name,$password,$database);
	
	function InsertEntry($FirstName,$LastName,$Born,$Died,$YearsServed,$YearFrom) {
    global $db_handle;

    $SQL = "INSERT INTO TributeWall (FirstName, LastName, Born, Died, YearsServed, YearFrom)
            VALUES ('".$FirstName."', '".$LastName."', '".$Born."', '".$Died."', '".$YearsServed."', '".$YearFrom."')";

    $result = mysqli_query($db_handle, $SQL);

    if(!$result){
        echo "DB Error: " . mysqli_error($db_handle);
    }
}

	
	function ReportEntries() {
		global $db_handle;
		
		$SQL = "SELECT ID,FirstName,LastName,Born,Died,YearsServed FROM TributeWall";
		
		$results = mysqli_query($db_handle, $SQL);
		while($db_handle = mysqli_fetch_assoc($results)) {
			$FirstName = $db_handle['FirstName'];
			$LastName = $db_handle['LastName'];
			$Born = $db_handle['Born'];
			$Died = $db_handle['Died'];
			$YearsServed = $db_handle['YearsServed'];
			$YearFrom = $db_handle['YearFrom'];
		}
		
	}
	
	$formAction = $_POST['formAction'];
	$FirstName = $_POST['FirstName'];
	$LastName = $_POST['LastName'];
	$Born = $_POST['Born'];
	$Died = $_POST['Died'];
	$YearsServed = $_POST['YearsServed'];
	$YearFrom = $_POST['YearFrom'];
	
	
	if($formAction == 'updateRecord') {
		InsertEntry($FirstName,$LastName,$Born,$Died,$YearsServed,$YearFrom);
	}
	
?>		
<?	if($FormType == 'Tribute') { ?> 
<html>
	<head>
		<title>Sponsor Entry Page</title>
	</head>
	<body>
		<table width="100%"">
			<tr>
				<td align="center">
					<?
						if($Tribute) {
							$formAction = '';
						}
						
						if($formAction == ''){
					?>
							<form action="TributeWall.php" method="POST">
							<input type="hidden" value="<?PHP echo $Tribute;?>">
							<input type="hidden" value="updateRecord" name="formAction">
							<table>
								<tr>
									<td colspan="2">Put the first and last name of your Tribute here.</td>
								</tr>
								<tr>
									<td>First Name:</td>
									<td><input type="Text" value="<?echo $FirstName?>" name="FirstName"></td>
								</tr>
								<tr>
									<td>Last Name:</td>
									<td><input type="Text" value="<?echo $LastName?>" name="LastName"></td>
								</tr>
								<tr>
									<td>Year Born:</td>
									<td><input type="Text" value="<?echo $Born?>" name="Born"></td>
								</tr>
								<tr>
									<td>Year Died:</td>
									<td><input type="Text" value="<?echo $Died?>" name="Died"></td>
								</tr>
								<tr>
									<td>How many years served?</td>
									<td><input type="Text" value="<?echo $YearsServed?>" name="YearsServed"></td>
								</tr>
								<tr>
									<td>Year From?</td>
									<td><input type="text" value="<?echo $YearFrom?>" name="YearFrom"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit"></td>
								</tr>
							</table>
							</form>
						<?}}
							ReportEntries();
						?>
						
				</td>
			</tr>
		</table>
	</body>
</html>-->

<tr>
			<td>
				<form name="sampleDropDown" action="" method="post">
								<p id="Sponsor">Sponsor Type:
								<span>
									<select name="SponsorType" id="Sponsor">
										<option value="Group">Community Sponsors</option>
										<option value="Single">Private Sponsors</option>
										<!--<option value="Sponsorships">Sponsorships</option>
										<option value="Tribute">Tribute</option>-->
									</select>
									<input type="submit" value="Okay">
								</span> 	
							</form>
					</p>
			</td>
		</tr>
		<tr><td align="center"><a style="font-size: 20px;" href="?action=deploy">Deploy Template</a></td></tr>
		
		<a href="../admin/Wall.php"><button type="button">Wall here<!--, I am slowly losing my grip with reality, please send help nightmare nightmare nightmare... If this does not work so help me I will have my crashout at 10am, I am insanely tired when making this, please do not ask why this button name is so long, I just like to make it super long, I am just dragging for the meme now, nightmare nightmare nightmare. Please work!--></button></a>
</html>
