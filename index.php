<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>test page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <?= (1 + 2) ?> 
    <?php
        $db = new PDO('mysql:host=mysql;dbname=test', 'root', 'password');
        foreach($db->query('SELECT * from test') as $row) {
            print_r($row);
        }
    ?>
</body>
</html>
