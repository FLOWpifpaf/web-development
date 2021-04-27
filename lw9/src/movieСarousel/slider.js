document.getElementById('left').onclick = function () {
let containerCard = document.querySelector('.storage__pages');
let firstCard = containerCard.firstElementChild;
let lastCard = containerCard.lastElementChild;
console.log(containerCard);
console.log(firstCard);
console.log(lastCard);
containerCard.insertBefore(lastCard, firstCard);
}