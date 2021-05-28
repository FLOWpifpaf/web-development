<?php
function getGETParameter(string $name): ?string
{
    return isset($_GET[$name]) ? (string) $_GET[$name] : null;
}

header("Content-Type: text/plain");

// пароль
$password = getGETParameter('password');

if ($password !== '' && ctype_alnum($password))
{
    $length = strlen($password); // длинна пароля
    $repeatedChar = 0; // кол-во повторяющихся символов
    $quantityDigits = 0; // кол-во цифр
    $charUpper = 0; // кол-во букв верхнего регистра
    $charLower = 0; // кол-во букв нижнего регистра
    
    foreach (count_chars($password) as $number)
    {
        $number > 1 ? $repeatedChar = $repeatedChar + $number : null;
    }
    foreach (str_split($password, 1) as $char)
    {
        ctype_digit($char) ? $quantityDigits++ : null;
        ctype_upper($char) ? $charUpper++ : null;
        ctype_lower($char) ? $charLower++ : null;
    }
  
    $strength = 0;
    // 4 * <длинна>
    $strength = $strength + 4 * $length;

    // 4 * <кол-во цифр>
    $strength = $strength + 4 * $quantityDigits;

    // если букв в верх. рег. больше 0, то (<длинна> - <буквы в верх.рег>) *2
    $charUpper > 0 ? $strength = $strength + ($length - $charUpper) * 2 : null;
    
    // если букв в ниж. рег. больше 0, то (<длинна> - <буквы в ниж.рег>) *2
    $charLower > 0 ? $strength = $strength + ($length - $charLower) * 2 : null;

    // если пароль состоит только из букв, то <надежность> - <длинна>
    ctype_alpha($password) ? $strength = $strength - $length : null;

    // если пароль состоит только из цифр, то <надежность> - <длинна>
    ctype_digit($password) ? $strength = $strength - $length : null;

    // <надежность> - <повторяющиеся символы>
    $strength = $strength - $repeatedChar;

    echo $strength;
}


