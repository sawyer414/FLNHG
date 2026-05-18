<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ERROR);

// Database connection configuration
$servername = "localhost";
$username = "a080cyberlearner_FLNHG";
$password = "4K]3m7HwMx_(";
$dbname = "a080cyberlearner_Nurses";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$imgdir = "image";

function InsertEntry($FirstName, $LastName, $Born, $Died, $YearsServed, $YearFrom, $Member, $Title, $image_path) {
    global $conn, $imgdir;
    if (isset($_FILES['image']) && $_FILES['image']['error'] == UPLOAD_ERR_OK) {
        $fileName = basename($_FILES['image']['name']);
        $targetPath = $imgdir . '/' . $fileName;
        if (!move_uploaded_file($_FILES['image']['tmp_name'], $targetPath)) {
            throw new Exception('Failed to upload image.');
        }
        $image_path = $fileName;
    }
    $sql = "INSERT INTO TributeWall (FirstName, LastName, Born, Died, YearsServed, YearFrom, Member, Title, image_path) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = mysqli_prepare($conn, $sql);
    if (!$stmt) {
        throw new RuntimeException('Prepare failed: ' . mysqli_error($conn));
    }
    mysqli_stmt_bind_param($stmt, 'ssssiiiss', $FirstName, $LastName, $Born, $Died, $YearsServed, $YearFrom, $Member, $Title, $image_path);
    if (!mysqli_stmt_execute($stmt)) {
        throw new Exception('Execute failed: ' . mysqli_stmt_error($stmt));
    }
    mysqli_stmt_close($stmt);
}

function ReportEntries() {
    global $conn, $imgdir;
    $sql = "SELECT id, FirstName, LastName, Born, Died, YearsServed, YearFrom, Member, Title, image_path FROM TributeWall";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<div class='entry' style='border: 1px solid #ccc; padding: 10px; margin: 10px; display: inline-block; width: 250px; vertical-align: top;'>";
            echo "<h3>" . htmlspecialchars($row['FirstName'] . ' ' . $row['LastName']) . "</h3>";
            echo "<p>Born: " . htmlspecialchars($row['Born']) . "</p>";
            echo "<p>Died: " . htmlspecialchars($row['Died']) . "</p>";
            echo "<p>Years Served: " . htmlspecialchars($row['YearsServed']) . "</p>";
            echo "<p>Year From: " . htmlspecialchars($row['YearFrom']) . "</p>";
            echo "<p>Member: " . ($row['Member'] ? 'Yes' : 'No') . "</p>";
            echo "<p>Title: " . htmlspecialchars($row['Title']) . "</p>";
            if ($row['image_path']) {
                echo "<img src='" . htmlspecialchars($imgdir . '/' . $row['image_path']) . "' alt='Image' style='max-width: 100%;' />";
            }
            echo "<form action='Wall.php' method='POST' style='margin-top: 10px;'>";
            echo "<input type='hidden' name='formAction' value='deleteRecord'>";
            echo "<input type='hidden' name='id' value='" . $row['id'] . "'>";
            echo "<button type='submit'>Delete</button>";
            echo "</form>";
            echo "</div>";
        }
        mysqli_free_result($result);
    } else {
        echo "Error retrieving entries: " . mysqli_error($conn);
    }
}


// Handle POST
$formAction = $_POST['formAction'] ?? '';
$FirstName = $_POST['FirstName'] ?? '';
$LastName = $_POST['LastName'] ?? '';
$Born = $_POST['Born'] ?? '';
$Died = $_POST['Died'] ?? '';
$YearsServed = isset($_POST['YearsServed']) ? (int)$_POST['YearsServed'] : 0;
$YearFrom = isset($_POST['YearFrom']) ? (int)$_POST['YearFrom'] : 0;
$Member = isset($_POST['Member']) ? (int)$_POST['Member'] : 0;
$Title = $_POST['Title'] ?? '';
$image_path = $_POST['image_path'] ?? '';

$errorMsg = '';
$success = false;

if ($formAction === 'deleteRecord') {
    $id = $_POST['id'] ?? 0;
    if ($id > 0) {
        // First, get the image_path
        $sql = "SELECT image_path FROM TributeWall WHERE id = ?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, 'i', $id);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $image_path = '';
        if ($row = mysqli_fetch_assoc($result)) {
            $image_path = $row['image_path'];
        }
        mysqli_stmt_close($stmt);
        // Then delete the record
        $sql = "DELETE FROM TributeWall WHERE id = ?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, 'i', $id);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
        // Then delete the image file if exists
        if (!empty($image_path)) {
            $filePath = $imgdir . '/' . $image_path;
            if (file_exists($filePath)) {
                unlink($filePath);
            }
        }
    }
}

if ($formAction === 'updateRecord') {
    try {
        InsertEntry($FirstName, $LastName, $Born, $Died, $YearsServed, $YearFrom, $Member, $Title, $image_path);
        $success = true;
        // Clear POST variables for form redisplay
        $FirstName = $LastName = $Born = $Died = $Title = '';
        $YearsServed = $YearFrom = $Member = 0;
    } catch (Exception $e) {
        $errorMsg = $e->getMessage();
    }
}
			

	if (!isset($FirstName)) {
		$FirstName = "";
	}
	if (!isset($LastName)) {
		$LastName = "";
	}
	if (!isset($Born)) {
		$Born = "";
	}
	if (!isset($Died)) {
		$Died = "";
	}
	if (!isset($Title)) {
		$Title = "";
	}


?>

    <form action="Wall.php" method="POST" enctype="multipart/form-data">
        <input type="hidden" name="formAction" value="updateRecord">
        <table>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="FirstName" value="<?php echo $FirstName; ?>"></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="LastName" value="<?php echo $LastName; ?>"></td>
            </tr>
            <tr>
                <td>Year Born:</td>
                <td><input type="text" name="Born" value="<?php echo $Born; ?>"></td>
            </tr>
            <tr>
                <td>Year Died:</td>
                <td><input type="text" name="Died" value="<?php echo $Died; ?>"></td>
            </tr>
            <tr>
                <td>How many years served?</td>
                <td><input type="number" name="YearsServed" value="<?php echo $YearsServed; ?>"></td>
            </tr>
            <tr>
                <td>Year From?</td>
                <td><input type="number" name="YearFrom" value="<?php echo $YearFrom; ?>"></td>
            </tr>
            <tr>
                <td>Title?</td>
                <td><input type="text" name="Title" value="<?php echo $Title; ?>"></td>
            </tr>
            <tr>
                <td>Membership</td>
                <td>
                    <label><input type="radio" name="Member" value="1" <?php if ($Member) echo 'checked'; ?>> Yes</label>
                    <label><input type="radio" name="Member" value="0" <?php if (!$Member) echo 'checked'; ?>> No</label>
                </td>
            </tr>
            <tr>
                <td>Image (optional)</td>
                <td><input type="file" name="image" accept="image/*"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">Submit</button></td>
            </tr>
        </table>
    </form>

    <hr>
    <h2>Entries</h2>
    <?php ReportEntries(); $conn->close(); ?>
</body>
</html>
