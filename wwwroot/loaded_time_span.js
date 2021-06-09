document.addEventListener('DOMContentLoaded', function() {
    const span = document.createElement('span');
    span.innerHTML = `Loaded: ${Date.now()}`;

    const body = document.getElementsByTagName('body')[0];
    body.appendChild(span);

}, false);