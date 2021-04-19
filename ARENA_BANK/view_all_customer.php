<?php
$page_title = "VIEW_ALL_CUSTOMER";
include "includes/header.php"; ?>
<?php include "includes/navbar_view_all_customer.php"; ?>
<?php include "db.php"; ?>


<div class="container">
    <div class="jumbotron">
    
    <h1 class="mb-3 h2 text-center"><strong>VIEW ALL CUSTOMERS</stong> </h1>


<?php



$query = "SELECT * FROM view_all_customer";
$select = mysqli_query($connection,$query);

// OVER DATABASE CONNECTION
?>
<table class="table table-bordered" style="background-color:white;">
    <thead class="table-dark">
        <tr>
            <th> ID </th>
            <th> NAME</th>
            <th> EMAIL </th>
            <th> BALANCE </th>
            <th> TRANSFER </th>
            
        </tr>
    </thead>

<?php

if($select)
{

    while($row = mysqli_fetch_array($select))
    {
        ?>
            <tbody>
            <tr>
                <th><?php echo $row['id']; ?></th>
                <th><?php echo $row['c_name']; ?></th>
                <th><?php echo $row['c_email']; ?></th>
                <th><?php echo $row['current_balance']; ?></th>

                

                 

                <form action="transfer_money.php" method="POST">
                    <input type="hidden" name="id" value=" <?php echo $row['id']; ?> " required>
                    <th><input type="submit" name="transfer_money" class="btn btn-success" value="TRANSFER" required></th>
                </form>
                </tr>
                </tbody>
<?php
}
}

?>
    </table>

    </div>
</div>





<?php include "includes/footer.php"; ?>