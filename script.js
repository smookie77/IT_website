xHttpOP = new XMLHttpRequest();
xHttpOP.onload = function () {
  document.querySelector(".navbar").innerHTML = this.responseText;
};
xHttpOP.open("GET", "/hambg/elements/header.html");
xHttpOP.send();