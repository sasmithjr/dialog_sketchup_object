document.addEventListener('DOMContentLoaded', function() {
    const button = document.createElement('button');
    button.type = 'button';
    button.innerHTML = 'Go to server page via dialog callback';

    button.onclick = function() {
        sketchup.load_link('http://127.0.0.1:8080/index.html');
    };

    const body = document.getElementsByTagName('body')[0];
    body.appendChild(button);

}, false);