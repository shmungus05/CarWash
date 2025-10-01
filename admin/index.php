<?php
session_start();
include('includes/config.php');
if(isset($_POST['login']))
{
    $uname=$_POST['username'];
    $password=md5($_POST['password']);
    $sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
    $query= $dbh -> prepare($sql);
    $query-> bindParam(':uname', $uname, PDO::PARAM_STR);
    $query-> bindParam(':password', $password, PDO::PARAM_STR);
    $query-> execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    if($query->rowCount() > 0)
    {
        $_SESSION['alogin']=$_POST['username'];
        echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
    } else{
        echo "<script>alert('Invalid Details');</script>";
    }
}
?>

<!DOCTYPE HTML>
<html>
<head>
    <title>CWMS | Admin Sign in</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    
    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap' rel='stylesheet'>

    <style>
        /* Modern Background */
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Login Card */
        .login-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
            transition: all 0.3s ease-in-out;
        }

        .login-container:hover {
            transform: scale(1.02);
        }

        h2 {
            color: #fff;
            margin-bottom: 20px;
        }

        /* Input Fields */
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 12px 40px 12px 12px; /* Right padding for eye icon */
            border: none;
            border-radius: 6px;
            outline: none;
            transition: all 0.3s ease;
            font-size: 16px;
        }

        .input-group input:focus {
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.5);
        }

        /* Password Toggle (Eye Icon) */
        .toggle-password {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #555;
            font-size: 18px;
        }

        .toggle-password:hover {
            color: #333;
        }

        /* Submit Button */
        .login-btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 6px;
            background: #4CAF50;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .login-btn:hover {
            background: #45a049;
            transform: scale(1.05);
        }

        /* Back Link */
        .back a {
            display: inline-block;
            margin-top: 15px;
            color: #fff;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .back a:hover {
            text-decoration: underline;
            color: #f1c40f;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Admin Sign In</h2>
        <form method="post">
            <div class="input-group">
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="input-group">
                <input type="password" id="password" name="password" placeholder="Password" required>
                <span class="toggle-password" onclick="togglePassword()">
                    <i class="fas fa-eye"></i>
                </span>
            </div>
            <button type="submit" class="login-btn" name="login">Sign In</button>
        </form>
        <div class="back">
            <a href="../index.php">Back to Home</a>
        </div>
    </div>

    <script>
        function togglePassword() {
            var passwordField = document.getElementById("password");
            var toggleIcon = document.querySelector(".toggle-password i");

            if (passwordField.type === "password") {
                passwordField.type = "text";
                toggleIcon.classList.remove("fa-eye");
                toggleIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        }
    </script>

</body>
</html>
