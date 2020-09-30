<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sith";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * From rozvrh WHERE trieda='3B'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $rozvrh[$row["den"]][$row["hodina"]]=$row["predmet"];
    }
} else {
    echo "0 results";
}

mysqli_close($conn);
?>
<?php
$dni = array("Pondelok", "Utorok", "Streda", "Štvrtok", "Piatok");
$hodiny = array(0,1,2,3,4,5,6,7);
$rozvrh[4][7] = "NIČ";
//$rozvrh[4][3] = "PFG";
?>
    <table border="1">
        <tr>
            <td></td>
            <td>0</td>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
        </tr>
        <tr>
            <td>Pondelok</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Utorok</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Streda</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Štvrtok</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Piatok</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>

<table border="1">
    <tr>
        <td>Den</td>
        <?php foreach($hodiny As $hodina):?>
            <td><?php echo $hodina; ?></td>
        <?php endforeach;?>
    </tr>
    <?php foreach($dni As $i => $den):?>
        <tr>
            <td> <?php echo $den;?> <?php echo$i;?></td>
            <?php foreach ($hodiny As $j => $hodina):?>
                <td> <?php echo @$rozvrh[$i] [$j];?> <?php echo$j;?></td>
            <?php endforeach;?>
        </tr>
    <?php endforeach;?>
</table>
<?php echo "<pre>"; var_dump($rozvrh);?>
