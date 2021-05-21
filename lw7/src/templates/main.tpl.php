<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="../../web/css/style.css">
</head>
<body class="background">
  <header class="panel">
    <div class="panel__navbar">
      <div class="navbar__element">
        <a href="#about-me" class="icon icom-man">Обо мне</a>
      </div>
      <div class="navbar__element">
        <a href="#hobby" class="icon icom-heart">Мое хобби</a>
      </div>
       <div class="navbar__element"> 
         <a href="#movies" class="icon icon-camera">Любимые фильмы</a>
      </div>
    </div>
  </header>
<div class="container">
  <div class="grid__container">
     <div class="title">
        <p class="title__quote">
          Мы берем на себя много, потому что мало чего боимся
        </p>
        <p class="title__author">&mdash;
          Том Демарко. Deadline
        </p>
      </div>
      <div class="header">
        <h1 class="header__name">Jane Doe</h1>
      </div>
      <div class="cherta">
        <img src="../../web/images/cherta.png" class="cherta_item" alt="Черта">
      </div>
      <div class="content">
        <p class="block__content" id="about-me">
          В 1930-е годы прошлого века физик Джордж Гамоу из 
          университета штата Колорадо начал публиковать
          мини-сериал рассказов о неком мистере Томпкинсе,
          банковском клерке средних лет. Мистер Томпкинс, как
          явствовало из этих историй, интересовался современной
          наукой.
        </p>
        <h2 class="block__hobby" id="hobby">Мое хобби</h2>
        <p class="block__content hobby">
          Он регулярно посещал вечерние лекции местного профессора
          и, разумеется, всегда засыпал на самом интересном месте.
          А когда просыпался, то обнаруживал себя в каком-нибудь
          параллельном мире, где один из основных законов физики
          действовал не так, как в его мире.
        </p>
      </div>
      <div class="write-me">
        <a href="#form"class="write-me_link">
          <span class="link__hyperlink">
            Напиши мне<span class="arrow"> &rarr;</span>
          </span>
        </a>
      </div>
      <div class="avatar">
        <img src="../../web/images/woman.png" class="woman" alt="Изображение девушки">
      </div>
      <div class="favorit">
        <h3 class="favorit__header">Любимые писатели:</h3>
        <ul class="favorit__list">
          <li class="list__item point">Айзек Азимов</li>
          <li class="list__item point">Говард Лавкрафт</li>
          <li class="list__item point">Дмитрий Глуховский</li>
          <li class="list__item point">Чак Паланик</li>
        </ul>
        <h3 class="favorit__header indented-title">Любимые фильмы:</h3>
        <ol class="favorit__list list">
          <li class="list__item number">Шоу Трумэна</li>
          <li class="list__item number">Малхолланд Драйв</li>
          <li class="list__item number">Семь жизней</li>
          <li class="list__item number">Гравитация</li>
        </ol>
      </div>
  </div>
</div>
<div class="block-movies">
  <div class="block-movies__storage">
    <h2 class="storage__cinema" id="movies">Любимые фильмы</h2>
    <div class="storage__pages">
      <div class="pages__descriptions">
        <img src="../../web/images/shawshank.png" alt="Фото" class="img" >
        <h4 class="descriptions__movies">Побег из Шоушенка</h4>
        <p class="descriptions__content">
          Успешный банкир Энди Дюфрейн обвинен в убийстве собственной жены и
          ее любовника. Оказавшись в тюрьме под названием Шоушенк, он
          сталкивается с жестокостью и беззаконием, царящими по обе стороны
          решетки. Каждый, кто попадает в эти стены, становится их рабом до
          конца жизни. Но Энди, вооруженный живым умом и доброй душой,
          отказывается мириться с приговором судьбы и начинает разрабатывать
          невероятно дерзкий план своего освобождения.
        </p>
      </div>
      <div class="pages__descriptions">
        <img src="../../web/images/anesthesia.png" alt="Фото" class="img" >
        <h4 class="descriptions__movies">Наркоз</h4>
        <p class="descriptions__content">
          Клай Бересфорд вынужден лечь под нож. Однако в процессе операции
          на сердце он неожиданно приходит в себя. Находясь в парализованном
          состоянии, будучи не в силах пошевелить ни рукой, ни ногой, он,
          тем не менее, чувствует каждое касание скальпеля к своей плоти…
        </p>
      </div>
      <div class="pages__descriptions">
        <img src="../../web/images/astral.png" alt="Фото" class="img" >
        <h4 class="descriptions__movies">Астрал</h4>
        <p class="descriptions__content">
          Джош и Рене переезжают со своими детьми в новый дом, но не успевают
          толком распаковать вещи, как начинаются странные события.
          Необъяснимо перемещаются предметы, в детской звучат странные звуки…
          Но в настоящий ужас приходят родители, когда их десятилетний сын
          Далтон впадает в кому. Все усилия врачей в больнице помочь
          мальчику безуспешны.
        </p>
      </div>
      <div class="pages__descriptions">
        <img src="../../web/images/gravity.png" alt="Фото" class="img" >
        <h4 class="descriptions__movies">Гравитация</h4>
        <p class="descriptions__content">
          Доктор Райан Стоун, блестящий специалист в области медицинского
          инжиниринга, отправляется в свою первую космическую миссию
          под командованием ветерана астронавтики Мэтта Ковальски, для
          которого этот полет — последний перед отставкой. Но во время,
          казалось бы, рутинной работы за бортом случается катастрофа.
          Шаттл уничтожен, а Стоун и Ковальски остаются совершенно одни;
          они находятся в связке друг с другом, и все, что они могут, —
          это двигаться по орбите в абсолютно черном пространстве
          без всякой связи с Землей и какой-либо надежды на спасение.
        </p>
      </div>
    </div>
  </div>
  <div class="block-movies__button">
    <button class="button__films">Все фильмы</button>
  </div>
</div>
  <div class="form">
    <div class="form__header">
      <hr class="header__line"/>
      <h2 class="header__text" id="form">Напиши мне</h2>
      <hr class="header__line"/>
    </div>
    <form method="post" class="form__content" action="">
   <div class="noti">
    <?php if (isset($args['notification'])): ?>
        <p class="notification"><?php echo $args['notification']; ?></p>
    <?php endif; ?>
    </div>
      <label class="content__text content__text_red"for="">
        Ваше имя</label>
      <input class="content__printing" type="text" name="name" maxlength="30"
       value="<?php echo $args['name'] ?? ''; ?>" />
      <?php if (isset($args['name_error_msg'])): ?>
        <p class="errors-input"><?php echo $args['name_error_msg']; ?></p>
      <?php endif; ?>
      <label class="content__text content__text_red" for="">
        Ваш email</label>
      <input class="content__printing" type="email" name="e-mail" maxlength="30"
       value="<?php echo $args['e-mail'] ?? ''; ?>" />
       <?php if (isset($args['e-mail_error_msg'])): ?>
         <p class="errors-input"><?php echo $args['e-mail_error_msg']; ?></p>
       <?php endif; ?>
      <label class="content__text" for="">Откуда вы?</label>
      <select class="content__country country__item" name="country" id="">
        <option class="country__item " value="Россия">
          Россия
        </option>
        <option class="country__item" value="Шойбулак"
        <?php echo isset($args['country']) && $args['country'] === 'Шойбулак' ? 'selected' : '';?> >
          Шойбулак
        </option>
      </select>
      <label class="content__text" for="">Ваш пол</label>
      <div class="content__radio">
        <input class="radio__item" type="radio" name="gender"
         id="point" value="Мужской" checked/>
        <label class="radio" for="point">
          Мужской
        </label>
        <input class="radio__item" type="radio" name="gender"
          id="power" value="Женский"
        <?php echo isset($args['gender']) && $args['gender'] === 'Женский' ? 'checked' : ''; ?>/>
        <label class="radio" for="power">
          Женский
        </label>
      </div>
      <label class="content__text content__text_red" for="">
        Ваше сообщение
      </label>
      <textarea class="content__write" name="about-me" maxlength="200"><?php echo $args['about-me'] ?? ''; ?></textarea>
      <?php if (isset($args['about-me_error_msg'])): ?>
        <p class="errors"><?php echo $args['about-me_error_msg']; ?></p>
      <?php endif; ?>
      <div class="block-movies__button send">
      <button class="button__films" type="submit">Отправить</button>
      </div>
    </form>
  </div>
  <footer class="postscript">
  <p class="postcript__paragarph">
    © 2006-2018 Поволжский государственный технологический университет, ФГБОУ ВО «ПГТУ»
  </p>
</footer>
</body>
</html>