<?php 
//IMAGE PULLING
function SponsorImages(){
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);

$dir = "../Sponsorships/imageS/";
$files = scandir($dir);
$allowed_extensions = ['jpg', 'jpeg', 'png', 'gif', 'webp'];
$sponsorImages = []; // Initialize the new array

foreach ($files as $file) {
    // Skip current and parent directory entries
    if ($file == '.' || $file == '..') {
        continue;
    }

    // Get the file extension and convert to lowercase
    $file_info = pathinfo($file);
    $extension = strtolower($file_info['extension'] ?? ''); // Use null coalescing operator for safety

    // Check if the extension is in the allowed list
    if (in_array($extension, $allowed_extensions)) {
        $sponsorImages[] = $file; // Add the file name to the $sponsorImages array
    }
}
static $imageIndex = 0;
$imageCount = count($sponsorImages);


for($i = $imageIndex; $i < $imageCount; $i++ ){
	$currentImage = $sponsorImages[$imageIndex % $imageCount];
	echo '<img src="'.$dir.''.$currentImage.'" width="100%">';
	$imageIndex++;
}
}

function People() {
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);
include '../admin/JustUncorked.php';

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

$SQL = "SELECT Name, LastName FROM SingleSponsers";
// $result = $db_handle->query($sql);
$result = mysqli_query($db_handle, $SQL);

		while($db_field = mysqli_fetch_assoc($result)) {
			$Name = $db_field['Name'];
			$LastName = $db_field['LastName'];
			
			echo "<span>". $Name ." ". $LastName."</span>";
			}
$db_handle->close();
}




function Community() {
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);
include '../admin/JustUncorked.php';

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

$SQL = "SELECT Community FROM GroupSponsers";
// $result = $db_handle->query($sql);
$result = mysqli_query($db_handle, $SQL);

		while($db_field = mysqli_fetch_assoc($result)) {
			$Community = $db_field['Community'];
			
			echo "<span>". $Community ."</span>";
			}
$db_handle->close();
}
?>

<div>
<!--People-->
	<br><br><center class="sponsor">Personal Donors</center><br><br>
	<div class="scroll-container">
		<div class="scroll-text">
			<? echo People();?>
		</div>
	</div>
<!--Community-->
	<br><br><center class="sponsor">Comunity Donations</center><br><br>
	<div class="scroll-container">
		<div class="scroll-text">
			<?echo Community();?>
		</div>
	</div>
</div>

<div class="sponsor-images">
	<?
		echo SponsorImages();
	?>
</div>