<?php
	$conn=mysqli_connect("localhost","root","","dependent_dropdown");
	if(!$conn)
	{
		die("could not connect Database".mysqli_connect_error());		
	}
?>