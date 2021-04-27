document.getElementById('left').onclick = function () {
  const containerCard = document.querySelector('.storage__pages');
  const firstCard = containerCard.firstElementChild;
  const lastCard = containerCard.lastElementChild;
  containerCard.insertBefore(lastCard, firstCard);
  }
  document.getElementById('right').onclick = function () {
    const containerCard = document.querySelector('.storage__pages');
    const firstCard = containerCard.firstElementChild;
    containerCard.append(firstCard);
    }