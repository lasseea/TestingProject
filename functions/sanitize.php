<?php
function escape($string) {
    return htmlentities($string, ENT_QUOTES, 'UTF-8');
}

function registermail($modtagermail, $navn) {
    $emne = "Velkommen til Yourparty.dk - du er nu registreret!";
    $besked ="Velkommen til Yourparty.dk, $navn";
    $header = "from:admin@yourparty.dk";
    mail($modtagermail, $emne, $besked, $header);
}

function random_password( $length = 8 ) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+;:,.?";
    $password = substr( str_shuffle( $chars ), 0, $length );
    return $password;
}

function connectionmysqli() {
    $servername = Config::get('mysql/host');
    $username = Config::get('mysql/username');
    $password = Config::get('mysql/password');
    $dbname = Config::get('mysql/db');
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset("utf8");
    return $conn;
}

function checkIfImage($image) {
    $isImage = false;
    if (($image == "image/gif") ||
        ($image == "image/jpeg") ||
        ($image == "image/jpg") ||
        ($image == "image/png")) {
        $isImage = true;
    }
    return $isImage;
}