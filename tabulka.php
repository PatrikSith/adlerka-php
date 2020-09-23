<?php
$dni = array("Pondelok", "Utorok", "Streda", "Štvrtok", "Piatok");
$hodiny = array(0,1,2,3,4,5,6,7);
$rozvrh[2][0] = "PFG";
$rozvrh[2][1] = "PFG";
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
        <td>&nbsp;</td>
        <?php foreach($hodiny As $i=> $hodina):?>
            <td><?php echo $hodina; ?></td>
        <?php endforeach;?>
    </tr>
    <?php foreach($dni As $i => $den):?>
        <tr>
            <td> <?php echo $den;?></td>
            <?php foreach ($hodiny As $j => $hodina):?>
                <td> <?php echo @$rozvrh[$i] [$j];?></td>
            <?php endforeach;?>
        </tr>
    <?php endforeach;?>
</table>
