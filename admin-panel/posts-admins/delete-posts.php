<?php require "../../config/config.php"; ?>


<?php 

    if(isset($_GET['po_id'])) {
        $id = $_GET['po_id'];

        $delete = $conn->prepare("DELETE FROM posts WHERE id = :id");
        $delete->execute([
                ':id' => $id
        ]);
    
       header('location: http://localhost:8080/CLEAN-BLOG/admin-panel/posts-admins/show-posts.php');

        
    }  else {
        header("location:http://localhost:8080/CLEAN-BLOG/404.php");
       
    }  

?>