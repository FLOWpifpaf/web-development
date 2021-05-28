<?php

function getParameter(string $name): ?string
{
    return isset($_GET[$name]) ? (string) $_GET[$name] : null;
}

function getIdenticalCharactersQuantity(string $password): int
{
    $identicalCharactersQuantity = 0;
    foreach (count_chars($password) as $number)
    {
        if ($number > 1)
        {
            $identicalCharactersQuantity = $identicalCharactersQuantity + $number;
        }
    }
    return $identicalCharactersQuantity;
}

function getDigitsQuantityFromString(string $password): int
{
    $digitsQuantity = 0;
    foreach (str_split($password, 1) as $char)
    {
        $digitsQuantity += ctype_digit($char) ? 1 : 0;
    }
    return $digitsQuantity;
}

function getCharUpperQuantityFromString(string $password): int
{
    $charUpperQuantity = 0;
    foreach (str_split($password, 1) as $char)
    {
        $charUpperQuantity += ctype_upper($char) ? 1 : 0;
    }
    return $charUpperQuantity;
}

function getCharLowerQuantityFromString(string $password): int
{
    $charLowerQuantity = 0;
    foreach (str_split($password, 1) as $char)
    {
        $charLowerQuantity += ctype_lower($char) ? 1 : 0;
    }
    return $charLowerQuantity;
}

function getPasswordStrength(string $password): ?int
{
    if (!ctype_alnum($password))
    {
        return null;
    }
    $lengthPassword = strlen($password);
    $identicalCharactersQuantity = getIdenticalCharactersQuantity($password);
    $digitsQuantity = getDigitsQuantityFromString($password);
    $charUpperQuantity = getCharUpperQuantityFromString($password);
    $charLowerQuantity = getCharLowerQuantityFromString($password);

    $strength = 0;
    // 4 * <длинна>
    $strength += 4 * $lengthPassword;

    // 4 * <кол-во цифр>
    $strength += 4 * $digitsQuantity;

    // если букв в верх. рег. больше 0, то (<длинна> - <буквы в верх.рег>) *2
    if ($charUpperQuantity > 0)
    {
        $strength += ($lengthPassword - $charUpperQuantity) * 2;
    }
    
    // если букв в ниж. рег. больше 0, то (<длинна> - <буквы в ниж.рег>) *2
    if ($charLowerQuantity > 0)
    {
        $strength += ($lengthPassword - $charLowerQuantity) * 2;
    }

    // если пароль состоит только из букв, то <надежность> - <длинна>
    if ($charUpperQuantity + $charLowerQuantity === $lengthPassword)
    {
        $strength -= $lengthPassword;
    }

    // если пароль состоит только из цифр, то <надежность> - <длинна>
    if ($digitsQuantity === $lengthPassword)
    {
        $strength -= $lengthPassword;
    }

    // <надежность> - <повторяющиеся символы>
    $strength -= $identicalCharactersQuantity;

    return $strength;
}