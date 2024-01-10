<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>

<?php
ob_start();


if(isset($_GET['prof_id'])) {
    $id = $_GET['prof_id'];

    // première requête
    $select = $conn->query("SELECT * FROM users WHERE Id = '$id'");
    $select->execute();
    $rows = $select->fetch(PDO::FETCH_OBJ);

    if($_SESSION['user_id'] !== $rows->Id) {
        header('location: http://localhost:8080/CLEAN-BLOG/index.php');
    }

    // deuxième requête
    if(isset($_POST['submit'])) {
        if($_POST['email'] == '' OR $_POST['username'] == '') {
            echo 'one or more inputs are empty';
        } else {
            $email = $_POST['email'];
            $username = $_POST['username'];

            $update = $conn->prepare("UPDATE users SET email = :email, username = :username WHERE Id = :id");
    
            $update->execute([
                ':email' => $email,
                ':username' => $username,
                ':id'=>$id,
            ]);

            echo'<script>window.location.href = "http://localhost:8080/CLEAN-BLOG/index.php";</script>';
            ob_end_flush();
            


            
        }
    }
} else {
    header("location: http://localhost:8080/CLEAN-BLOG/404.php");
   
}






?>
            <form method="POST" action="profile.php?prof_id=<?php echo $rows->Id; ?>" >
              <!-- Email input -->
              <div class="form-outline mb-4">
                <input type="email" name="email" value="<?php echo $rows->email; ?>" Id="form2Example1" class="form-control" placeholder="email" /> 
              </div>

              <div class="form-outline mb-4">
                <input type="text" name="username" value="<?php echo $rows->username; ?>" Id="form2Example1" class="form-control" placeholder="username" />
            </div>

           

              <!-- Submit button -->
              <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">Update</button>

          
            </form>


 <?php require "../includes/footer.php"; ?>