<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark probootstrap-navabr-dark">
      <div class="container">
        <a class="navbar-brand" href="index.php">The Sparks Foundation Bank</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-nav" aria-controls="probootstrap-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="probootstrap-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="index.php" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="https://www.thesparksfoundationsingapore.org/" target="_blank" class="nav-link">About</a></li>
            <li class="nav-item"><a href="contact.php" class="nav-link">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <?php
    include 'config.php';
    $sql = "SELECT * FROM customers";
    $result = mysqli_query($conn,$sql);
    ?>
    <div class="container">
        <h2 class="text-center pt-4" style="color : white;">Customers</h2>
        <br>
        <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered" style="border-color:white;">
                        <thead style="color : white;">
                            <tr>
                            <th scope="col" class="text-center py-2">Account no.</th>
                            <th scope="col" class="text-center py-2">Account holder name</th>
                            <th scope="col" class="text-center py-2">E-Mail</th>
                            <th scope="col" class="text-center py-2">Account Balance(in Rs.)</th>
                            
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr style="color : white;">
                        <td class="py-2"><?php echo $rows['Account_no'] ?></td>
                        <td class="py-2"><?php echo $rows['Name']?></td>
                        <td class="py-2"><?php echo $rows['Email_id']?></td>
                        <td class="py-2"><?php echo $rows['Balance']?></td>
                        <td><a href="selecteduserdetail.php?id= <?php echo $rows['Account_no'] ;?>"> <button type="button" class="btn" style="background-color : #A569BD;">Transfer money</button></a></td> 
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                    </div>
                </div>
        </div> 
    </div>
    <footer class="probootstrap-footer probootstrap-bg-dark">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-5 order-md-2 order-1">
            <div class="probootstrap-footer-widget mb-4">
              <ul class="probootstrap-footer-social list-unstyled float-md-right float-left">
                <li><a href="https://twitter.com/SubirPatro"><span class="icon-twitter"></span></a></li>
                <li><a href="https://www.facebook.com/subir.kumar.754703"><span class="icon-facebook"></span></a></li>
                <li><a href="https://www.instagram.com/subir_8_20_/"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-7 order-md-1 order-2">
            <p>&copy; Present 2023. All Rights Reserved. <br> Made with <span class="icon-heart"></span> by <a href="https://www.instagram.com/subir_8_20_/">M.Harnisha</a></p>
          </div>
        </div>
      </div>
    </footer>
    <!-- loader -->
    <div id="probootstrap-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff555f"/></svg></div>


    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/TweenMax.min.js"></script>
    <script src="js/ScrollMagic.min.js"></script>
    <script src="js/debug.addIndicators.min.js"></script>
    <script src="js/animation.gsap.min.js"></script>
    <script src="js/main.js"></script>
</body>