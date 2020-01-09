<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Dependent DropDown List</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function()	
	{
		$("#course").change(function()
		{
			var course_id = $(this).val();

			$.ajax({
				url:"action.php",
				method:"POST",
				data:{courseID:course_id},
				success:function(data)
				{
					$("#language").html(data);
				}
			});
		});
	});

</script>
</head>

<body class="bg-info">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-6 bg-light mt-5 p-4 rounded">
				<h5 class="text-center text-info pb-3">Dependent DropDown List</h5>
				<form action="" method="POST">
					<div class="form-group">
						<select name="course" class="form-control form-control-lg" id="course">
							<option value="" disabled selected>--Select Course--</option>


							<?php
								require_once 'config.php';
								
							$sql="SELECT DISTINCT * FROM course WHERE course_status<>'DELETE' ORDER BY course_name";
								
								$result=mysqli_query($conn,$sql);
								while($row=mysqli_fetch_assoc($result))
								{	
									?>
										<option value="<?= $row['course_id'];?>">
											
											<?= $row['course_name'];?>
												
										</option>
									<?php
								}
							?>
						</select>
					</div>



					<div class="form-group">
						<select name="language" class="form-control form-control-lg" id="language">
							<option value="" disabled selected>--Select Language--</option>
						</select>
					</div>
					<div class="form-group">
						<input type="submit" name="submit" value="SUBMIT" class="btn btn-danger btn-block btn-lg">
					</div>
				</form>
			</div>			
		</div>
	</div>
</body>
</html>
