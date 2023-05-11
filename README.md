Asterisk connection visualisation for Fusion 2022

-There must be an Asterisk user with ARI access rights.
-Create a file named "password" in this directory containing the Asterisk credentials <user>:<password> for this user.
-Configure Asterisk ARI URLs at top of script in index.html (http and WebSocket base URL).

-run.sh will start a python file server and a chromium browser in fullscreen.

-alternatively, run "python -m http.server" or other simple servers in this directory and open the site in a modern browser.

