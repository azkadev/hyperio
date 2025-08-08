<div align="center">

# Hyperio


[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=for-the-badge)](LICENSE)

*{short_description}*

![](https://github.com/azkadev/hyperio/blob/main/assets/images/hyperio.jpg)

</div>

---


# Hyperio



**Hyperio** {description}

- 🇮🇩 [Indonesia](https://github.com/azkadev/hyperio/blob/main/README.md)
- 🇨🇿 [Afrika](https://github.com/azkadev/hyperio/blob/main/README_AFRIKA.md)
- 🇨🇳 [China](https://github.com/azkadev/hyperio/blob/main/README_CHINA.md)
- 🏴󠁧󠁢󠁥󠁮󠁧󠁿 [English](https://github.com/azkadev/hyperio/blob/main/README_ENGLISH.md)
- 🇮🇳 [India](https://github.com/azkadev/hyperio/blob/main/README_INDIA.md)
- 🇮🇩 [Jawa](https://github.com/azkadev/hyperio/blob/main/README_JAWA.md)
- 🇯🇵 [Jepang](https://github.com/azkadev/hyperio/blob/main/README_JEPANG.md)
- 🇰🇷 [Korea](https://github.com/azkadev/hyperio/blob/main/README_KOREA.md)
- 🇷🇺 [Russia](https://github.com/azkadev/hyperio/blob/main/README_RUSSIA.md)
- 🇮🇩 [Sunda](https://github.com/azkadev/hyperio/blob/main/README_SUNDA.md)
- 🇹🇭 [Thailand](https://github.com/azkadev/hyperio/blob/main/README_THAILAND.md)

## Fakta

- Library ini tidak terikat banyak depenencides pihak 3

## Feature

- [x] **Sangat Cepat** Library Async (**Tidak Memblokir Threads**)
- [x] **Mudah Digunakan**

## Contoh

- [Contoh Sederhana](https://github.com/azkadev/hyperio/tree/main/quickstart)



## Memasang

sebelum memasang pastikan kamu mengetahui basic dart / flutter setidaknya kamu sudah menginstall flutter / dart dalam komputer / device kamu. [Flutter Website](https://flutter.dev)

```bash
dart pub add hyperio
```

## Dokumentasi


### Dasar

pastikan kamu membuat dasar ini dahulu ya, tidak harus sama

**contoh:**

```dart

import "package:hyperio/hyperio.dart";

void main() {
  print("start");
  final hyperioAzkadev = HyperioAzkadev();
}

```

### EnsureInitialized

method wajib di panggil bebas mau setelah **on** / sebelum method **on** tapi saya sarankan sebelum **on**

**contoh:**

```dart
  hyperioAzkadev.ensureInitialized();
```


### All

untuk mendapatkan http request method get,post,put,patch,head,delete dan lain lain

**contoh:**

```dart
  hyperio.all("/", (req,res){
    return res.send("oke");
  });
```


### listen

listen server

**contoh:**

```dart
await hyperio.listen(
  port: 3000,
  bindIp: "0.0.0.0",
);
```

di atas itu hanyalah sedikit contoh jika ingin contoh lebih banyak scroll ke atas saya membuatkan contoh

# Penting

- jika suatu saat program ini tidak berjalan perlu di ingat lagi saya tidak pernah membuat malware / code suspicous / fake mungkin karena waktu, penting memahami waktu code ini di buat dan framework yang saya pakai versi berapa. jangan asal menuduh!, saya bisa lepas kendali!
- program yang saya buat pada dasarnya tidak bergantung banyak dependencies
- di karenakan tidak bergantung banyak dependencies walaupun code saya tidak ada yang update kemungkinan masih bisa di pakai selama bahasa code program tidak mengalami perubahaan besar
- semua program yang saya buat jika ada di official akun saya saya jamin 100% aman no malware, no suspicious- masih bingung kenapa kode saya / tidak bis compile? sebaiknya jika kamu merasa tidak sehat check dahulu ke dokter, jika kamu berperilaku menyimpang, trans*ender, l*bt atau hal lainya, obatin dahulu kamu sendiri itu bukan program saya yang suspicious / malware, saya tidak pernah melakukan hal buruk seperti itu, sebelum kamu membuat orang lain menjadi gila / mengikuti kamu, lebih baik kamu obatin dulu ya. jika masih ingin tetap mempelajari code saya, rasanya tidak mungkin karena saya bukan seorang trans*ender, l*bt jadi mungkin code program akan menyulitkan otak kamu
- jika screenshot dan readme ada yang mencurigakan atau berbeda, percayalah saya tidak membuat program malware, suspicious, kemungkinan saya malas mengupdate, kamu bisa membuat issue untuk meminta saya update / berklarifikasi

## Bantuan

**Sulit**? saya sudah membangun **library** ini **sebaik** mungkin dan **berusaha mudah** di baca dan **digunakan sebaik mungkin**. 

jika **kamu** masih **merasa** **kesulitan** dan **kebingungan** **cobalah bergabung** ke **group** kami secara **gratis tanpa biaya apapun**

- [Telegram](https://t.me/DEVELOPER_GLOBAL_PUBLIC)
- [Discord](https://discord.gg/h4qanyN7)

**sebelum join** pastikan **memakai profile** yang **jelas** kami tidak keberatan kamu siapa, dan pangkat apapun, tapi **pastikan** **ada username dan photo profile**, dan usahakan untuk **chat di group** **tidak chat pribadi** karena itu **group umum dan mungkin orang lain kebingungan**. jika **tidak mengikuti** ini kemungkinan **tidak bisa akses chat di group dan bakal di banned**, solusi pakai akun kedua, karena setelah di banned kami tidak bisa merespond cepat


## Support Me

Jika kamu merasa program ini berguna, kamu bisa support saya [GITHUB azkadev](https://github.com/azkadev) di link itu tersedia social media dan sponsor saya. saya tidak keberatan jika kamu hanya follow / donasi uang sedikit

![](https://github.com/azkadev/azkadev/blob/main/assets/gopay.png)

- https://github.com/sponsors/azkadev
- https://www.patreon.com/c/azkadev
- https://opencollective.com/azkadev
- https://paypal.me/azkadev

Terimakasih


azkadev - 18-07-2025


## Tags

- hyperio dart

</br>
</br>


<div align="center">

**Di buat dengan sebaik mungkin untuk Dart & Flutter Komunitas**

</div>
