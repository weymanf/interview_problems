window.onload = function() {
var textbar = document.querySelector('.content');

var buttons = document.querySelectorAll('.button');

for(var i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener('click', function(event) {
  	var num = event.currentTarget.innerHTML
  	var temp = document.createElement('p');
  	temp.innerHTML = num;
  	textbar.appendChild(temp.firstChild);
  }, false);
}

}
