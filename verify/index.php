<?php 
session_start();
$con = mysqli_connect("localhost","root","","scriptum");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verify your account</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-5 mx-auto">
            <div class="card">
                <div class="card-header text-center">
                    <h3>
                        Verify Account
                    </h3>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <?php 
                            if(isset($_GET['s'])){
                                if($_GET['s'] == 'success'){
                                    ?>
                                    <div class="alert alert-success">
                                        <p>
                                            <i class="fas fa-check"></i>
                                            Your account has been verified. You can now <a href="http://localhost/scriptum/login">login</a> .
                                            
                                        </p>
                                    </div>
                                </div>
                                <?php 
                            } else {
                                
                            ?>
                                
                            <form method="GET" class="text-center">
                                <div class="form-group">
                                    <label for="otp">
                                        OTP #
                                    </label>
                                    <input type="text" name="otp" id="otp" class="form-control" placeholder="xxxxxx">
                                    <input type="hidden" name="s" value="request">
                                    <input type="hidden" name="status" value="<?php echo $_GET['status']; ?>">
                                    <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
                                    <input type="hidden" name="code" value="<?php echo $_GET['code']; ?>">
                                </div>
                                <div class="form-group">
                                    <?php 
                                    if($_GET['s'] == "request"){
                                        echo '<div class="alert alert-info">
                                        <p>
                                            <i class="fas fa-check"></i>
                                            OTP sent to your mobile number.
                                        </p>
                                    </div>';
                                    ?>

                                    <input type="submit" name="submit" class="btn btn-primary" value="Submit">
                                    <?php
                                    } else {
                                        ?>
                                        
                                    <input type="submit" name="request" class="btn btn-primary" value="Request OTP">
                                    <?php
                                    }
                                    ?>
                                </div>
                            </form>
                        <?php 
                            } } else {
                                echo '<div class="alert alert-danger">
                                        <p>
                                            <i class="fas fa-times"></i>
                                            Your account could not be verified. Please try again later.
                                        </p>
                                    </div>';
                            } ?>
                            </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<?php 
if(isset($_GET['request'])){
    $id = $_GET['id'];
    $code = $_GET['code'];
    $status = $_GET['status'];
    $q = mysqli_query($con, "SELECT * FROM users_public WHERE id = '$id'");
    $get = mysqli_fetch_array($q);
    $phone = $get['phone'];
    if(mysqli_num_rows($q) >= 1){
             ##########################################################################
	// ITEXMO SEND SMS API - PHP - CURL-LESS METHOD
	// Visit www.itexmo.com/developers.php for more info about this API
	##########################################################################
	function itexmo($number,$message,$apicode,$passwd){
		$url = 'https://www.itexmo.com/php_api/api.php';
		$itexmo = array('1' => $number, '2' => $message, '3' => $apicode, 'passwd' => $passwd);
		$param = array(
			'http' => array(
				'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
				'method'  => 'POST',
				'content' => http_build_query($itexmo),
			),
		);
		$context  = stream_context_create($param);
		return file_get_contents($url, false, $context);
	}
    
	$msg = "Your OTP is ".$code.". This is valid for one-time use.";
	$result = itexmo($phone,$msg,"TR-SCRIP092880_GVHDC", "a1ti#{&({!");
    } else {
        echo '<script>alert("Invalid request");</script>';
    }
}
if(isset($_GET['submit'])){
    $otp = $_GET['otp'];
    $code = $_GET['code'];
    if($otp == $code){
        $id = $_GET['id'];
        $status = "1";
        $q = mysqli_query($con, "SELECT * FROM users_public WHERE id = '$id'");
        if(mysqli_num_rows($q) > 0){
            $q = mysqli_query($con, "UPDATE users_public SET status = '$status' WHERE id = '$id'");
            if($q){
                echo '<script>alert("Account verified");</script>';
                echo '<script>window.location.href = "http://localhost/scriptum/login";</script>';
            } else {
                echo '<script>alert("Account could not be verified");</script>';
            }
        } else {
            echo '<script>alert("Invalid request");</script>';
        }
    } else {
        echo '<script>alert("Invalid OTP");</script>';
    }
}
?>
</body>
</html>

