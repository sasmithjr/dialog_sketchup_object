document.addEventListener('DOMContentLoaded', function() {
    const button = document.createElement('button');
    button.type = 'button';
    button.innerHTML = 'View sketchup properties';

    button.onclick = function() {
        const keys = Object.keys(sketchup);
        alert(keys);
    };

    const body = document.getElementsByTagName('body')[0];
    body.appendChild(button);

}, false);