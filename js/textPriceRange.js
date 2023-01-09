const price = document.querySelector('#price');
const priceValue = document.querySelector('.price-value');

price.addEventListener('input', setPriceValue);

setPriceValue();

function setPriceValue() {
    if (price.value >= 520)
        priceValue.innerHTML = 'Будь-яка ціна'
    else if (price.value <= 0)
        priceValue.innerHTML = 'Безкоштовно';
    else
        priceValue.innerHTML = price.value;
}