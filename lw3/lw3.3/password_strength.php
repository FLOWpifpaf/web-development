<?php
require_once 'function.php';

header("Content-Type: text/plain");

$password = getParameter('password');

$strength = getPasswordStrength($password);
echo $strength;