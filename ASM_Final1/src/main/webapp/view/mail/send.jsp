<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Send email success</title>
	</head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<style>
		body {
			background-color: #25274d;
		}

		.contact {
			padding: 4%;
			height: 400px;
		}

		.col-md-3 {
			background: #ff9b00;
			padding: 4%;
			border-top-left-radius: 0.5rem;
			border-bottom-left-radius: 0.5rem;
		}

		.contact-info {
			margin-top: 10%;
		}

		.contact-info img {
			margin-bottom: 15%;
		}

		.contact-info h2 {
			margin-bottom: 10%;
		}

		.col-md-9 {
			background: #fff;
			padding: 3%;
			border-top-right-radius: 0.5rem;
			border-bottom-right-radius: 0.5rem;
		}

		.contact-form label {
			font-weight: 600;
		}

		.contact-form button {
			background: #25274d;
			color: #fff;
			font-weight: 600;
			width: 25%;
		}

		.contact-form button:focus {
			box-shadow: none;
		}
		   
        .custom-icon {
    font-size: 48px; /* Đặt kích thước theo ý muốn */
    color: black;
}

    
	</style>

	<body>
	

		<div class="container contact">
			
			<div class="row">
				<div class="col-md-3">
					<div class="contact-info">
						<img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image" /> 
						<h2>Contact N1 Store</h2>
						 <a class="text-light"  href="/home/index" role="button"> <i class="bi bi-house-check-fill  custom-icon "></i></a>
						
					</div>
				</div>
				<div class="col-md-9">
					<h2>Send Email Success</h2>
					<div class="control-label col-sm-2">From ${mail.from}</div>
					<div class="control-label col-sm-2">To ${mail.to}</div>
					<div class="control-label col-sm-2">Subject ${mail.subject}</div>
					<div class="control-label col-sm-2">Comment ${mail.body}</div>
					<h4>Thank you for your feedback</h4>
				</div>
			</div>
	
		</div>

	</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> 
	</html>