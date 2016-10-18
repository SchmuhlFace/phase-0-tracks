console.log("THe script is running!");

function addRedBorder(event) {
  image.style.border = "4px solid red";
}

var image = document.getElementById("face");
image.addEventListener("click", addRedBorder);

