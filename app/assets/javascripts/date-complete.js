  var profilPrice = document.getElementById('dev-price');
  var profilCheckin = document.getElementById('dev-check_in');
  var profilCheckout = document.getElementById('dev-check_out');
  const devPrice = document.getElementById('dev-price-dev').value

document.addEventListener("DOMContentLoaded", function() {
  profilCheckout.addEventListener("blur", function() {
    profilPrice.innerText = "Price : " + devPrice

  });
});
