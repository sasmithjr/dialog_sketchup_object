document.addEventListener('DOMContentLoaded', function() {
    const button = document.createElement('button');
    button.type = 'button';
    button.innerHTML = 'Reload page';

    button.onclick = function() {
        location.reload()
    };

    const body = document.getElementsByTagName('body')[0];
    body.appendChild(button);

}, false);