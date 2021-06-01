function cartman() {
  const convas = document.getElementById("Cartman");
  const context = convas.getContext("2d");
  //Картман

  //Штаны
  context.beginPath();
  context.moveTo(28, 260);
  context.lineTo(37, 288);
  context.lineTo(228, 288);
  context.lineTo(237, 260);
  context.fillStyle = "#804528";
  context.fill();
  //Тапки
  context.beginPath();
  context.moveTo(32, 291);
  context.lineTo(232, 291);
  context.quadraticCurveTo(210, 280, 135, 288);
  context.bezierCurveTo(95, 276, 28, 287, 32, 291);
  context.stroke();
  context.fillStyle = "#2e2a39";
  context.fill();

  //Туловище
  context.beginPath();
  context.moveTo(42, 169);
  context.quadraticCurveTo(18, 185, 11, 202);
  context.lineTo(23, 255);
  context.bezierCurveTo(54, 294, 164, 280, 184, 268);
  context.bezierCurveTo(192, 265, 270, 292, 249, 195);
  context.lineTo(254, 195);
  context.bezierCurveTo(244, 195, 239, 168, 222, 171);
  context.fillStyle = "#ff1f43";
  context.fill();

  //Голова
  context.beginPath();
  context.ellipse(132, 140, 95, 80, 0, 0, 2 * Math.PI);
  context.fillStyle = "#ffefc6";
  context.fill();

  //Шапка
  context.beginPath();
  context.ellipse(132, 140, 99, 81, Math.PI, 0.02, Math.PI * 0.95);
  context.quadraticCurveTo(134, 87, 64, 120);
  context.fillStyle = "#00bac9";
  context.fill();
  //Козырек шапки
  context.beginPath();
  context.moveTo(32, 142);
  context.quadraticCurveTo(132, 85, 229, 127);
  context.lineTo(229, 122);
  context.quadraticCurveTo(132, 78, 32, 137);
  context.fillStyle = "#ffe01d";
  context.fill();
  //Помпон шапки
  context.beginPath();
  context.moveTo(99, 63);
  context.lineTo(115, 55);
  context.lineTo(118, 55);
  context.lineTo(130, 56);
  context.lineTo(132, 51);
  context.quadraticCurveTo(140, 50, 142, 55);
  context.bezierCurveTo(160, 62, 160, 65, 142, 70);
  context.quadraticCurveTo(137, 72, 130, 70);
  context.lineTo(130, 67);
  context.lineTo(118, 70);
  context.lineTo(118, 70);
  context.lineTo(116, 64);
  context.lineTo(113, 69);
  context.lineTo(103, 69);
  context.quadraticCurveTo(97, 65, 99, 63);
  context.fillStyle = "#ffe01d";
  context.fill();

  //Глаза
  //Ресницы левого глаза
  context.beginPath();
  context.ellipse(113, 139, 24, 28, 0.5, 0, 2 * Math.PI);
  context.fillStyle = "#c7b697";
  context.fill();
  //Левый Глаз
  context.beginPath();
  context.ellipse(112, 140, 24, 28, 0.5, 0, 2 * Math.PI);
  context.fillStyle = "#fdfdfd";
  context.fill();
  //Левый зрачек
  context.beginPath();
  context.arc(121, 137, 2.5, 0, 2 * Math.PI);
  context.fillStyle = "#1b1a18";
  context.fill();
  //Ресницы правого глаза
  context.beginPath();
  context.ellipse(161, 139, 24, 29, 2.5, 1.17, 2.15 * Math.PI);
  context.fillStyle = "#c7b697";
  context.fill();
  //Правый Глаз
  context.beginPath();
  context.ellipse(162, 140, 24, 29, 2.5, 1.17, 2.15 * Math.PI);
  context.fillStyle = "#fdfdfd";
  context.fill();
  //Правый зрачек
  context.beginPath();
  context.arc(151, 137, 2.5, 0, 2 * Math.PI);
  context.fillStyle = "#1b1a18";
  context.fill();

  // рот
  context.beginPath();
  context.moveTo(119, 187);
  context.lineTo(127, 184);
  context.lineTo(150, 185);
  context.quadraticCurveTo(153, 186, 152, 188);
  context.lineTo(145, 200);
  context.bezierCurveTo(143, 201, 139, 200, 130, 198);
  context.quadraticCurveTo(130, 198, 119, 187);
  context.fillStyle = "#1b1a18";
  context.fill();
  // зубы
  context.beginPath();
  context.moveTo(126.5, 188);
  context.lineTo(131.5, 188);
  context.moveTo(133, 188);
  context.lineTo(139, 188);
  context.moveTo(140, 188);
  context.lineTo(148, 188);
  context.lineWidth = 3;
  context.strokeStyle = "#fff";
  context.stroke();
  //Подбородок 1
  context.beginPath();
  context.arc(138, 125, 80, 0.56 * Math.PI, Math.PI / 2.4, true);
  context.strokeStyle = "#a99a85";
  context.lineWidth = 1;
  context.stroke();
  //Подбородок 2
  context.beginPath();
  context.moveTo(58, 183);
  context.bezierCurveTo(110, 224, 170, 221, 210, 179);
  context.strokeStyle = "#7a6f64";
  context.stroke();

  //Левая рука
  context.beginPath();
  context.moveTo(11, 202);
  context.quadraticCurveTo(20, 200, 47, 217);
  context.quadraticCurveTo(50, 224, 52, 224);
  context.quadraticCurveTo(53, 232, 46, 235);
  context.lineTo(20, 237);
  context.quadraticCurveTo(-15, 220, 11, 202);
  context.fillStyle = "#ffe01d";
  context.fill();
  //Правая рука
  context.beginPath();
  context.moveTo(223, 215);
  context.quadraticCurveTo(230, 194, 243, 197);
  context.quadraticCurveTo(263, 190, 262, 212);
  context.bezierCurveTo(267, 250, 240, 230, 230, 228);
  context.quadraticCurveTo(209, 230, 223, 215);
  context.fillStyle = "#ffe01d";
  context.fill();

  //Пуговки
  context.beginPath();
  context.moveTo(138, 221);
  context.lineTo(138, 227);
  context.moveTo(141, 244);
  context.lineTo(141, 250);
  context.moveTo(139, 266);
  context.lineTo(139, 272);
  context.strokeStyle = "#67202a";
  context.lineWidth = 3;
  context.stroke();

  context.beginPath();
  context.moveTo(144, 220);
  context.lineTo(146, 255);
  context.lineTo(143, 280);
  context.strokeStyle = "#67202a";
  context.lineWidth = 1;
  context.stroke();

}