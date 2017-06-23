<?php
session_start();
session_destroy();
echo '<script>alert("Logout Success");window.location.assign("index.php");</script>';
?>