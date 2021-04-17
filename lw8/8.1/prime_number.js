function isPrimeNumber(digits) {
  let isPrime;
  let message = '';
  if (!isNaN(digits) || Array.isArray(digits)) {
    if (!Array.isArray(digits)) {
      digits = Array.from([digits]);
    }
    for (let ark = 0; ark < digits.length; ark++) {
      const digit = digits[ark];
      if (isNaN(digit)) {
        message = 'один или более элементов массива не является числом';
        break;
      }
      for (let i = 2; i <= digit; i++) {
        isPrime = true;
        for (let j = 2; j < i; j++) {
          if (i % j === 0) {
            isPrime = false;
            break;
          }
        }
      }
        if (isPrime) {
          message = message + 'Результат: '+ digit + ' is prime number\n';
        } else {
          message = message + 'Результат: ' + digit + ' is not prime number\n';
        } 
    }
  } else {
    message = 'данные не являются числом, либо массивом';
  }
  return message;
}

