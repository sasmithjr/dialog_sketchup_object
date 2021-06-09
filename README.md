# Bug with global sketchup object in dialogs

## The issue

If a dialog loads a local file initially and then goes to a page served by an external web server, the `sketchup` global no longer has any callback properties unless the page is reloaded (e.g. `location.reload()` in the dev console).

## Steps to reproduce

1. Run a simple webserver that can serve local files with `./wwwroot` as the root directory for serving files. Links are expecting the files to be served on 127.0.0.1:8080. I found `http-server` easy to install and run with npm; `npm install http-server -g` and then run `http-server` from the `wwwroot` dir.
2. Install plugin code from `plugin` dir. Can use `./plugin/install_macos.sh` to copy the plugin to the correct directory for SU2021 on macOS.
3. Run SketchUp and load the dialog by goign to `Extensions > Dialog global bug demo > Open dialog with local file`
4. When the dialog loads, you should see:
    * A first line which says "Local index"
    * A link that says "Server page via link" which, when clicked, will take you to the index page served by the webserver from step 1.
    * A link that says "Local page 2 via link" which, when clicked, will take you to another local file html page.
    * A loaded time stamp
    * A "View sketchup proprties" button. When clicked, it displays the value of `Object.keys(sketchup)` in an alert window
    * A "Reload page" button which calls `location.reload()` on click
    * A "Go to server page via replace" button which calls `location.replace('http://127.0.0.1:8080/index.html')` to load the index from the webserver
5. Click "View sketchup properties" to see that there are multiple callbacks associated with the `sketchup` global object. Only `myCustomCallback` and `close` are callbacks I created
6. Click either the button or the link to go to the server index
7. Once again, click "View sketchup properties". Note that the alert is blank
8. Click "Reload page" to call `location.reload()` for the page served by the web server
9. Click "View sketchup properties" and see the callbacks are associated again
