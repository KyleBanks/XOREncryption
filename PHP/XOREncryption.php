<?php

function encryptDecrypt($input) {
    $key = ['K', 'C', 'Q']; //Can be any chars, and any size array
    $output = '';

    for ($i = 0; $i < strlen($input); $i++) {
        $output .= $input[$i] ^ $key[$i % count($key)];
    }
    return $output;
}

$encrypted = encryptDecrypt('kylewbanks.com');
echo "Encrypted:" . $encrypted . "\n";

$decrypted = encryptDecrypt($encrypted);
echo "Decrypted:" . $decrypted . "\n";

