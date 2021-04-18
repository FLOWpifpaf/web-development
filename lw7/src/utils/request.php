<?php
function getPostParameter(string $nameOfParemetr): ?string
{
    return isset($_POST[$nameOfParemetr]) ? (string) $_POST[$nameOfParemetr] : null;
}

function getRequestMethod(): string
{
    return  $_SERVER['REQUEST_METHOD'];
}
