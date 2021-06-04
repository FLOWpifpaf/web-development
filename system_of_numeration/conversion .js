document.getElementById("count").onclick = function() {
  let number = parseInt(document.getElementById("number").value);
  let base = parseInt(document.getElementById("base").value);
  if ((base >= 2 && base <= 10) & (number >= 1 && number <= 109)) {
    let result = '';
    while (number >= base) {
      result += String(number % base);
      number = parseInt(number / base);
    }
    result += String(number);
    let product = 1;
    let amount = 0;
    result.split('').forEach(number => {
      product *= parseInt(number);
      amount += parseInt(number);
    });
    alert(product - amount);
  } else {
    alert("Введите корректное значение");
  }
};