<?php
function saveFeedbackPage(): void
{
    $formDesignations['name'] = getPostParameter('name');
    $formDesignations['e-mail'] = getPostParameter('e-mail');
    $formDesignations['country'] = getPostParameter('country');
    $formDesignations['gender'] = getPostParameter('gender');
    $formDesignations['about-me'] = getPostParameter('about-me');

    $errors = [];

    if (!filter_var($formDesignations['e-mail'], FILTER_VALIDATE_EMAIL))
    {
        $errors['e-mail_error_msg'] = 'Введите правильный e-mail';
    }
    
    if ($formDesignations['name'] === '')
    {
        $errors['name_error_msg'] = 'Введите имя';
    }

    if ($formDesignations['e-mail'] === '')
    {
        $errors['e-mail_error_msg'] = 'Введите e-mail';
    }

    if ($formDesignations['about-me'] === '')
    {
        $errors['about-me_error_msg'] = 'Введите сообщение';
    }

    if ($errors === [])
    {
        $file = fopen(__DIR__ . '/../../web/savedfiles/' . strtolower($formDesignations['e-mail']) . '.txt', 'w');

        $text = "name: {$formDesignations['name']}\n"
        . "e-mail: {$formDesignations['e-mail']}\n"
        . "country: {$formDesignations['country']}\n"
        . "gender: {$formDesignations['gender']}\n"
        . "about-me: {$formDesignations['about-me']}";

        fwrite($file, $text);
        fclose($file);
        $args['notification'] = 'Все четко';
    }
    else
    {
        $args = array_merge($errors, $formDesignations);
    }
    renderTemplate('main.tpl.php', $args);
}