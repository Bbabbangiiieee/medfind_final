
<?php 	

if (isset($_POST['create'])) {
	include "../constant/connect.php";
	include '../test.php';
	function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
	}


if($_POST) {	

  $med_name =validate($_POST['med_name']);
  $med_quan =validate($_POST['med_quan']);
  $med_price=validate($_POST['med_price']);
  $med_pack =validate($_POST['med_pack']);
  $med_dosage =validate($_POST['med_dosage']);
  $med_class = validate($_POST['med_class']);
  $med_stat ="";
  $med_exp	=validate($_POST['med_exp']);
  $med_desc = validate($_POST['med_desc']);
  $med_added=date('Y-m-d');
  $filename = $_FILES["image"]["name"];
  $tempname = $_FILES["image"]["tmp_name"];
  $folder = "../image/" . $filename;
 
  if($med_quan == 0){
	$med_stat = "Not Available";
} else {
	$med_stat = "Available";
}

				$sql = "INSERT INTO med_pharm (med_name, med_quan, med_price, med_stat, med_added, med_exp, pharmacy) 
				VALUES ('$med_name', '$med_quan', '$med_price', '$med_stat', '$med_added', '$med_exp', '$pharm')";
				mysqli_query($connect, $sql);

				if($upload) {
					$valid['success'] = true;
					$valid['messages'] = "Successfully Added";
					header('location:../product.php');	
				} 
				if ($result) {
					$_SESSION['success'] = "Successfully Added";
					header('location: ../product.php');
					}else {
					$_SESSION['error'] = "Something went wrong. Try again.";
					header('location: ../product.php');
					}


} 
}