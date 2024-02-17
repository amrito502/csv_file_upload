<?php

include("csv.php");
$csv = new csv();

if(isset($_POST['sub'])){
    $csv->import($_FILES['file']['tmp_name']);
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="csv">
        <div class="container"><br><br><br>
        <h1>Inport Csv File</h1>
        <hr>
        <br><br>
            <form action="" method="post" enctype="multipart/form-data">
                <input type="file" name="file" required>
                <input type="submit" name="sub" value="Import" >
            </form>
            <br><br><br>
        </div>
    </div>
</body>
</html>