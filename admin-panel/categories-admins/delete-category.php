<?php //require "../includes/navbar.php"; ?>


<?php require "../../config/config.php"; ?>

<?php 

    if(isset($_GET['de_id'])) {
        $id = $_GET['de_id'];

        $delete = $conn->prepare("DELETE FROM categories WHERE id = :id");
        $delete->execute([
            ':id' => $id
        ]);
       

       

       header('location: http://localhost:8080/CLEAN-BLOG/admin-panel/categories-admins/show-categories.php');

        
    }  else {
        header("location: http://localhost:8080/CLEAN-BLOG/404.php");
       
    }  

?>