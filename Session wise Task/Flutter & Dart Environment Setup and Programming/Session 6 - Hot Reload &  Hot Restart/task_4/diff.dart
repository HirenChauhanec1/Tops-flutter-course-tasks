
Difference between Hot Reload & Hot Restart :

Hot Reload
    -  Injects the updated Dart code into the running app.
    -  The UI updates almost instantly without restarting the app.
    -  App state is preserved (e.g., text entered in a form, current screen, counter value).
    -  Best for UI changes, styling, and most code modifications.

Hot Restart
    - Restarts the Dart application from the main() function.
    - Takes a little longer than hot reload because the app starts over.
    - App state is lost and all variables are reset to their initial values.
    - Useful when changes affect app initialization, global variables, or when hot reload cannot apply the changes.