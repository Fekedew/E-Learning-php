<?php
 
 include 'db_conn.php';

  $subject= $_POST['subject'];
  $logo_upload = $_FILES['logo']['name'];
  $target2 = "Logo_upload/".$logo_upload;
  move_uploaded_file($_FILES['logo']['tmp_name'],$target2);
  $query= "insert into subject_master values('','$subject','$logo_upload')";
  echo '<script>alert("UPLOAD SUCCESSFULLY");window.location="subject_master.php";</script>';
  mysqli_query($conn, $query);
  ?>