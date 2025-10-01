<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Wash Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        /* Remove Black Background */
        /* .header-main,
        .profile_details,
        .dropdown-menu {
            background: transparent !important;
        } */
		

        /* Ensure text remains visible */
        .header-main h1 a,
        .profile_details .user-name p,
        .profile_details .user-name span {
            background: none !important; /* Removes background */
            color: #ffffff !important; /* Adjust text color if needed */
        }

        /* Dropdown menu background */
        .dropdown-menu {
            background-color: #1E293B !important; /* Dark Blue */
            border-radius: 5px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

		.dropdown-toggle {
			background-color: transparent !important;
		}

        /* Change font color of Settings and Logout */
        .drp-mnu li a {
            color:rgb(0, 0, 0) !important; /* White text */
            background: none !important; /* No black background */
            padding: 10px 15px;
            display: block;
        }

        /* Specific color for Logout */
        .drp-mnu li a[href="logout.php"] {
            color: #ff4444 !important; /* Red for logout */
        }

        /* Hover Effects */
        .drp-mnu li a:hover {
            background:rgb(175, 130, 102) !important; /* Darker hover effect */
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <div class="header-main">
        <div class="logo-w3-agile">
            <h1><a href="dashboard.php">Car Wash Management System</a></h1>
        </div>

        <div class="profile_details w3l">        
            <ul>
                <li class="dropdown profile_details_drop">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <div class="profile_img">    
                            <span class="prfil-img"><img src="images/User-icon.png" alt=""> </span> 
                            <div class="user-name">
                                <p>Welcome</p>
                                <span>Administrator</span>
                            </div>
                            <i class="fa fa-angle-down"></i>
                            <i class="fa fa-angle-up"></i>
                            <div class="clearfix"></div>    
                        </div>
                    </a>
                    <ul class="dropdown-menu drp-mnu">
                        <li> <a href="change-password.php"><i class="fa fa-lock"></i> Setting</a> </li> 
                        <li> <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="clearfix"></div>    
    </div>

</body>
</html>
