  var profilPrice = document.getElementById('dev-price');
  var putPrice = document.getElementById('pricer');

  var profilCheckin = document.getElementById('dev-check_in');
  var profilCheckout = document.getElementById('dev-check_out');

  const devPrice = document.getElementById('dev-price-dev').value

document.addEventListener("DOMContentLoaded", function() {
  profilCheckout.addEventListener("blur", function() {
    var mydatein = new Date(profilCheckin.value);
    var mydateout = new Date(profilCheckout.value);
    var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
    var diffDays = Math.round(Math.abs((mydateout.getTime() - mydatein.getTime())/(oneDay)));
    profilPrice.innerText = "Total price: " + (diffDays * devPrice) + "€"
    putPrice.value = (diffDays * devPrice)

  });
});
