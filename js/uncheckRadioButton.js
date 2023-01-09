const radioButtons = document.querySelectorAll('input[type="radio"]');

radioButtons.forEach((radioButton) => {
  if (!radioButton.checked)
    radioButton.addEventListener("click", checkRadioButton);
  else radioButton.addEventListener("click", uncheckRadioButton);
});

function checkRadioButton() {
  radioButtons.forEach((radioButton) => {
    radioButton.removeEventListener("click", uncheckRadioButton);
    radioButton.addEventListener("click", checkRadioButton);
  });
  this.checked = true;
  this.removeEventListener("click", checkRadioButton);
  this.addEventListener("click", uncheckRadioButton);
}

function uncheckRadioButton() {
  this.checked = false;
  this.removeEventListener("click", uncheckRadioButton);
  this.addEventListener("click", checkRadioButton);
}
