-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 May 2024, 17:45:29
-- Sunucu sürümü: 8.0.35
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `shop_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(154, 16, 28, 'Lilyum', 170, 1, 'Lilyum.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `message`
--

CREATE TABLE `message` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(14, 16, 'Fatmanur', 'fatmanura@gmail.com', '05520544243', 'Merhaba, çiçekleriniz harika!'),
(15, 16, 'Ayşe Aydın', 'ayseaydin@gmail.com', '05050263623', 'Merhaba, siparişimde değişiklik yapmak istiyorum. Benimle iletişime geçer misiniz?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'beklemede'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(26, 16, 'Ayşe Aydın', '05050263623', 'ayseaydin@gmail.com', 'kredi kartı', 'seyitnizam mahallesi, gül sokak, daire:3, zeytinburnu, istanbul - 34025', ', Beyaz Gül (1) ', 140, '23-May-2024', 'tamamlandı'),
(27, 16, 'Fatmanur', '05520242325', 'fatmanura@gmail.com', 'kredi kartı', 'seyitnizam mahallesi, gül sokak, daire:3, zeytinburnu, istanbul - 34025', ', Kırmızı Gül (2) , Pembe Royal Gül Buketi (1) ', 400, '23-May-2024', 'tamamlandı'),
(29, 16, 'Fatmanur', '05525215336', 'fatmanura@gmail.com', 'kapıda ödeme', 'seyitnizam mahallesi, gül sokak, daire:3, zeytinburnu, istanbul - 34025', ', Kırmızı Gül (1) , Pembe Royal Gül Buketi (1) ', 260, '23-May-2024', 'tamamlandı'),
(30, 20, 'zeynep', '05540262121', 'zeynepa@gmail.com', 'kredi kartı', 'seyitnizam mahallesi, gül sokak, daire:3, zeytinburnu, istanbul - 34025', ', Pembe Royal Gül Buketi (1) , Lilyum (1) ', 290, '25-May-2024', 'tamamlandı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(23, 'Pembe Royal Gül Buketi', 'Pembe Royal Gül Buketi, kraliyetin zarafetini ve lüksünü yansıtan bir seçenektir. Bu muhteşem buket, sevgi dolu duygularınızı en ihtişamlı şekilde ifade etmek için mükemmel bir seçimdir.\r\n', 170, 'Pembe Royal Gül.jpg'),
(24, 'Kırmızı Gül', 'Kırmızı gül, aşkın en saf ve derin ifadesidir, tutkunun sembolüdür. Bu güzel çiçek, duyguları en güçlü ve romantik şekilde ifade etmek için ideal bir tercihtir.\r\n', 140, 'Kırmızı Gül.jpg'),
(25, 'Beyaz Gül', 'Beyaz gül, safiyet, masumiyet ve temizliğin sembolüdür. Zarafetiyle bilinen bu çiçek, duyguları samimi ve içten bir şekilde ifade etmek için mükemmel bir seçimdir.\r\n', 140, 'Beyaz Gül.jpg'),
(26, 'Sarı Lale', 'Sarı laleler, neşe ve dostluğun simgesidir, baharın canlılığını yansıtır. Bu çiçekler, enerjik ve pozitif duygular yaymak için mükemmel bir tercihtir.\r\n', 210, 'Sarı Lale.jpg'),
(27, 'Beyaz Orkide', 'Beyaz orkide, zarafetin ve sofistike güzelliğin simgesidir. Bu çiçek, saflık ve zarafetin en yüksek ifadesi olarak bilinir, her ortama incelik katar.\r\n', 200, 'Beyaz Orkide.jpg'),
(28, 'Lilyum', 'Lilyumlar, zarafetin ve saflığın simgesi olarak bilinir, göz alıcı kokularıyla tanınırlar. Bu çiçekler, zarif ve etkileyici bir görünüm sunarak herhangi bir ortama ferahlık ve güzellik katarlar.\r\n', 170, 'Lilyum.jpg'),
(29, 'Papatya', 'Papatyalar, doğanın sadeliğini ve doğallığını temsil eder, saflık ve temizliği sembolize ederler. Bu çiçekler, tazelik ve neşe dolu duyguları ifade etmek için sıklıkla tercih edilirler.', 120, 'Papatya.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'kullanıcı'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(16, 'Fatmanur', 'fatmanura@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 'kullanıcı'),
(17, 'feraye talay', 'feraye@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'yönetici'),
(20, 'zeynep', 'zeynepa@gmail.com', '4297f44b13955235245b2497399d7a93', 'kullanıcı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `pid` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- Tablo için AUTO_INCREMENT değeri `message`
--
ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
