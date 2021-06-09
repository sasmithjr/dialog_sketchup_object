function getFileWithPath(path) {
    const url = `file://${path}`
    console.log(`Getting file with url: ${url}`);
    const xhr = new XMLHttpRequest()
    xhr.onload = function(e) {
        if (xhr.status === 0 || xhr.status === 2000) {
            console.log(`Loaded XHR: ${xhr.response}`)
        } else {
            console.log(`XHR failed with status: ${xhr.status}`)
        }
    }
    xhr.responseType = "text";
    xhr.open("GET", url, true);
    xhr.send();
}

document.addEventListener('DOMContentLoaded', function() {
    const button = document.createElement('button');
    button.type = 'button';
    button.innerHTML = 'Request local file';

    button.onclick = function() {
        sketchup.requestLocalFilePath();
    };

    const body = document.getElementsByTagName('body')[0];
    body.appendChild(button);

}, false);