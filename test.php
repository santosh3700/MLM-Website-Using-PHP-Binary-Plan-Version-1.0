<?php
include('php-includes/connect.php');
include('php-includes/check-login.php');
$userid = $_SESSION['userid'];
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mlml Website  - Test</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

 

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include('php-includes/menu.php'); ?>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">User Home</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                	<div class="col-lg-12">
                    	<div class="table-responsive">
                        	 <table class="table" align="center" border="0" style="text-align:center">
                             	<tr height="200">
                                	<td><b>1</b></td>
                                    <td colspan="2"><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                    <td><b>1</b></td>
                                </tr>
                                <tr height="200">
                                	<td colspan="2"><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                    <td colspan="2"><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                </tr>
                                <tr height="200">
                                	<td><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                    <td><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                    <td><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                    <td><i class="fa fa-user fa-4x" style="color:#ADA8A8"></i></td>
                                </tr>
                             </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
