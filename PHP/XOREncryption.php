<?php

function encryptDecrypt($input) {
    $key = 'KCQ';
    $inputLen = strlen($input);
    $keyLen = strlen($key);

    if ($inputLen <= $keyLen) {
        return $input ^ $key;
    }

    for ($i = 0; $i < $inputLen; ++$i) {
        $input[$i] = $input[$i] ^ $key[$i % $keyLen];
    }
    return $input;
}

$encrypted = encryptDecrypt('kylewbanks.com');
echo "Encrypted:" . $encrypted . "\n";

$decrypted = encryptDecrypt($encrypted);
echo "Decrypted:" . $decrypted . "\n";
