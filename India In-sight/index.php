<?php
$insert = false;
if(isset($_POST['Name'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }
    // echo "Success connecting to the db";

    // Collect post variables
    $Name = $_POST['Name'];
    $Age = $_POST['Age'];
    $Gender = $_POST['Gender'];
    $Email = $_POST['Email'];
    $Phone = $_POST['Phone'];
    $Queries = $_POST['Queries'];
    $sql = "INSERT INTO `india_in-sight`.`contact us` (`Name`, `Age`, `Gender`, `Email`, `Phone no`, `Queries`, `Date`) VALUES ('$Name', '$Age', '$Gender', '$Email', '$Phone', '$Queries', current_timestamp())" ;
    // echo $sql;

    // Execute the query
    if($con->query($sql) == true){
        // echo "Successfully inserted";

        // Flag for successful insertion
        $insert = true;
    }
    else{
        echo "ERROR: $sql <br> $con->error";
        $insert =false;
    }

    // Close the database connection
    $con->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>India In-sight | Contact Us</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Sriracha&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- <img class="bg" src="bimg.jpg" alt="background image"> -->
    <div class="container">
        <h1>Contact Us</h3>
        <p>Enter your details and submit this form to confirm your participation in the trip </p>
        <?php
        if($insert == true){
        echo "<p class='submitMsg'>Thanks for submitting your form. </p>";
        }
        else{
            echo "<p class='submitMsg'>Please fill this form </p>";
        }
    ?>
        <form action="index.php" method="post">
            <input type="text" name="Name" id="Name" placeholder="Enter your name">
            <input type="text" name="Age" id="Age" placeholder="Enter your Age">
            <input type="text" name="Gender" id="Gender" placeholder="Enter your gender">
            <input type="email" name="Email" id="Email" placeholder="Enter your email">
            <input type="phone" name="Phone" id="Phone" placeholder="Enter your phone">
            <textarea name="Queries" id="Queries" cols="30" rows="10" placeholder="Enter any queries  here"></textarea>
            <button class="btn">Submit</button> 
        </form>
    </div>
    <script src="index.js"></script>
    <!-- INSERT INTO `contact us` (`Sr.no`, `Name`, `Age`, `Gender`, `Email`, `Phone no`, `Queries`, `Date`) VALUES ('1', 'kkkk', '18', 'Male', 'kkk@gmail.com', '9999999999', 'kkk', current_timestamp());
     -->
</body>
</html>
