
function kenny(){
    const canvas = document.getElementById("Kenny");
    const context = canvas.getContext("2d");

//Туловище
context.beginPath();
context.moveTo(28, 208);
context.quadraticCurveTo(13, 228, 11, 248);
context.lineTo(29, 258);
context.lineTo(29, 269);
context.lineTo(38, 269);
context.lineTo(38, 290);
context.lineTo(140, 290);
context.lineTo(140, 271);
context.lineTo(147, 271);
context.lineTo(147, 268);
context.lineTo(162, 246);
context.quadraticCurveTo(158, 228, 146, 208);
context.fillStyle = "#f46500"; 
context.fill();
//Промежуток между рук и туловищем
context.beginPath();
context.moveTo(36, 238); 
context.lineTo(30, 258);
context.moveTo(139, 238);
context.lineTo(141, 255);
//Молния
context.moveTo(88, 195);
context.lineTo(88, 276);
context.stroke(); 

//Голова
context.beginPath();
context.arc(90, 144, 89, 0, 2 * Math.PI);
context.fillStyle = "#e75700";
context.fill();

context.beginPath();
context.arc(90, 142, 89, 0, 2 * Math.PI);
context.fillStyle = "#f76c00";
context.fill(); 
//Ободок капюшона
context.beginPath();
context.ellipse(85, 149, 63, 57, 0, 0, 2 * Math.PI);
context.strokeStyle = "#4f2f21";
context.stroke();
 //Лицо
 context.beginPath();
 context.ellipse(86, 140, 35, 48, 0, 0, 2 * Math.PI);
 context.fillStyle = "#fff0c8";
 context.fill();
//Левый глаз
context.beginPath();
context.ellipse(60, 139, 23.5, 28, 0.5, 0, 2 * Math.PI);
context.fillStyle = "#6d634c";
context.fill();

context.beginPath();
context.ellipse(60, 140, 24, 28, 0.5, 0, 2 * Math.PI);
context.fillStyle = "#fdfdfd";
context.fill();
//Зрачек
context.beginPath();
context.arc(71, 138, 3, 0, 2 * Math.PI);
context.fillStyle = "#1b1a18";
context.fill();

//Правый глаз
context.beginPath();
context.ellipse(109, 142, 23.5, 29, 2.5, 0, 2 * Math.PI);
context.fillStyle = "#787a6f";
context.fill();

context.beginPath();
context.ellipse(110, 143, 24, 29, 2.5, 1.17, 2.15 * Math.PI);
context.fillStyle = "#fdfdfd";
context.fill();
//Зрачек
context.beginPath();
context.arc(103, 140, 3, 0, 2 * Math.PI);
context.fillStyle = "#1b1a18";
context.fill();

//Мех
context.beginPath();
context.moveTo(90, 92);
context.bezierCurveTo(10, 90, 10, 194, 85, 190);
context.bezierCurveTo(35, 160, 40, 115,90, 92);
context.bezierCurveTo(150, 90, 160, 194, 85, 190);
context.bezierCurveTo(145, 160,115, 110,  90, 92);
context.fillStyle = "#85491f";
context.fill();
context.strokeStyle = "#80451b";
context.stroke();

//Шнурки капюшона
context.beginPath();
context.moveTo(85, 190);
context.bezierCurveTo(78, 200, 80, 210, 74, 215);
context.moveTo(85, 190);
context.bezierCurveTo(90, 200, 80, 210, 86, 225);
context.strokeStyle = "#010006";
context.stroke();

//Руки
//Левая рука
context.beginPath();
context.arc(17, 257, 13, 0, 2 * Math.PI);
context.fillStyle = "#894e21";
context.fill();
//Палец
context.beginPath();
context.arc(26, 255, 6, 0, 2 * Math.PI);
context.strokeStyle = "#693718";
context.lineWidth = 2;
context.fill();
context.stroke();
//Правая рука
context.beginPath();
context.arc(155, 259, 13, 0, 2 * Math.PI);
context.fillStyle = "#894e21";
context.fill();
//Палец
context.beginPath();
context.arc(145, 255, 6, 0, 2 * Math.PI);
context.strokeStyle = "#693718";
context.lineWidth = 2;
context.fill();
context.stroke();

 //Ботинки
 context.beginPath();
 context.moveTo(35, 290);
 context.lineTo(143, 290);
 context.lineWidth = 4.5;
 context.lineCap = "round";
 context.strokeStyle = "#040209";
 context.stroke();
}