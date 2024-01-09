<p align="center"><img src="https://i.imgur.com/im4lO6y.png" width="500"></p>

## MONEYSYNC.ID - WEBSITE PENGELOLA KEUANGAN
MONEYSYNC.ID adalah website yang dikembangkan untuk mencatat problem keuangan, seperti keuangan masuk (debit) dan keuangan keluar (credit). Beberapa fitur diantaranya:

- Daftar 
- Masuk / Login
- Dashboard
- Kategori Uang Masuk
- Uang Masuk
- Kategori Uang keluar
- Uang keluar

Pada penyusunan website ini menggunakan PHP versi 7.4 dan Framework Laravel 8.

**NOTE**: template admin menggunakan stisla, untuk lebih lengkapnya bisa kunjungi situs resminya di: https://getstisla.com/

## Screenshot
#### Landing Page
<div style="display:flex;justify-content:space-between;">
  <img src="https://i.imgur.com/P7d3AhU.png" style="width:33%;" />
  <img src="https://i.imgur.com/TaR13Xt.png" style="width:33%;" />
  <img src="https://i.imgur.com/sPnGPjI.png" style="width:33%;" />
</div> ㅤㅤ

#### Dashboard
<img src="https://i.imgur.com/GbDi420.png" style="width:100%;" />
 
#### Uang Masuk
<img src="https://i.imgur.com/IAZp6Te.png" style="width:100%;" />
  
#### Laporan Uang Masuk
<img src="https://i.imgur.com/ceFC7CX.png" style="width:100%;" />
  
#### Fitur Cetak Laporan
<img src="https://i.imgur.com/POo8rN6.png" style="width:100%;" />

## Cara Install

`$ > git clone https://github.com/maulayyacyber/uangku-laravel.git`

`$ > cd uangku-laravel`

`$ > composer install`

`$ > cp env.example .env`

silahkan konfigurasi pengaturan database, seperti host, user, password dan nama database

`$ > composer dump-autoload`

`$ > php artisan migrate`

`$ > php artisan db:seed`


USERNAME : admin

PASSWORD : admin

## Cara Menjalankan

`$ > cd uangku-laravel`

`$ > php artisan serve`

Silahkan buka browser dan ketikkan : http://localhost:8000

## License

UANGKU is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## Oleh
220103111 – Adnan Hanafi
220103124 – Farid Anwar Shidiq
220103123 – Fitria Ayu Novitasari
