<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>HAKKIMIZDA</h3>
    <p> <a href="home.php">Anasayfa</a> / Hakkımızda </p>
</section>

<section class="about">

    <div class="flex">
           <div class="image">
                <img src="images/about-img-2.png" alt="">
            </div>
        <div class="content">
            <h3>Neden Bizi Tercih Etmelisiniz?</h3>
            <p>Uzman ekibimiz, her bir aranjmanı sizin için özel olarak tasarlar ve en yüksek kaliteyi garanti eder. Hızlı ve güvenilir teslimat hizmetimizle sevdiklerinize zamanında ulaşır, her özel anınızı daha da unutulmaz kılmak için buradayız.</p>
            <a href="shop.php" class="btn">Şimdi Satın Al</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>Biz Kimiz?</h3>
            <p>Biz, doğanın en güzel armağanlarını sizlere sunmak için çalışan tutkulu bir ekibiz. Her çiçeğin, her buketin arkasında büyük bir özen ve sevgi var. Uzun yıllara dayanan deneyimimizle, en taze ve en güzel çiçekleri seçiyor, özel anlarınızı daha da anlamlı kılmak için sanata dönüştürüyoruz.</p>
            <a href="contact.php" class="btn">İletişime Geçin</a>
        </div>
            <div class="image">
                <img src="images/about-img-3.png" alt="">
            </div>
    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">MÜŞTERİ DEĞERLENDİRMELERİ</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/person-1.jpg" alt="">
            <p>Çiçekleriniz gerçekten harika! Her bir aranjman o kadar özenle hazırlanmış ki, sevdiklerime gönderdiğimde yüzlerinde kocaman bir gülümseme oluştu. Hızlı teslimat ve güler yüzlü hizmetiniz için teşekkür ederim.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Ayşe K.</h3>
        </div>

        <div class="box">
            <img src="images/person-4.jpg" alt="">
            <p>Çiçeklerinizin kalitesi ve tazeliği beni çok etkiledi. Ayrıca, müşteri hizmetleriniz çok yardımcı oldu ve tüm sorularıma anında cevap verdiler. Bundan sonra tüm çiçek siparişlerimi buradan vereceğim.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Mehmet T.</h3>
        </div>

        <div class="box">
            <img src="images/person-2.jpg" alt="">
            <p>Doğum günü için sipariş verdiğim çiçek buketi tam zamanında ve mükemmel durumda geldi. Renklerin canlılığı ve çiçeklerin kokusu harikaydı. Herkese tavsiye ederim!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Zeynep A.</h3>
        </div>

        <div class="box">
            <img src="images/person-5.jpg" alt="">
            <p>Düğün çiçeklerimizi buradan aldık ve her şey muhteşemdi! Çiçekler tam hayal ettiğimiz gibi geldi ve günümüzü daha da özel kıldı. Hizmetiniz ve kaliteniz için minnettarız.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i></i>
            </div>
            <h3>Ali B.</h3>
        </div>

        <div class="box">
            <img src="images/person-3.jpg" alt="">
            <p>Anneler Günü için sipariş verdiğim çiçek aranjmanı, annemi çok mutlu etti. Çiçekler hem taze hem de çok güzeldi. Hızlı teslimat ve harika hizmet için teşekkürler!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Emine Y.</h3>
        </div>

        <div class="box">
            <img src="images/person-6.jpg" alt="">
            <p>Her seferinde beklentilerimi aşan çiçekler gönderiyorsunuz. Özellikle iş yerindeki etkinlikler için tercih ediyorum ve herkes bayılıyor. Müşteri memnuniyeti odaklı hizmetiniz takdire şayan.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i></i>
            </div>
            <h3>Kerem D.</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>