<?php
session_start();
session_unset();
session_destroy();

header("location: http://localhost:8080/CLEAN-BLOG/index.php")



?>