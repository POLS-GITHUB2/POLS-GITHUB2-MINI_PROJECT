<?php
	require 'config.php';
	
	$output='';
	
	$sql="SELECT DISTINCT * FROM language WHERE lang_cors_id='".$_POST['courseID']."' ORDER BY lang_name";

	$result = mysqli_query($conn,$sql);

	$output .='<option value="" disable selected>--Select Language--</option>';
	
	while ($row=mysqli_fetch_array($result)) 
	{
		$output .='<option value="'.$row["lang_id"].'">'.$row["lang_name"].'</option>';
	}
	echo $output;
?>