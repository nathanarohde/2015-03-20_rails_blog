Crappy Blog Program created by Nathan Rohde copyright Nathan Rohde 2015

Program takes a message and stores it outside of the active browser window.

License:GPL v2

To run program locally download or clone all files.

Then in IRB:
Set current location to the name of the folder.

<input command: postgresql>

open new tab

<input command: rake db:create>
<input command: rake db:migrate>

open new tab

<input command: rails server>

Program can be loaded by setting browser to:

<localhost:3000>

hosted of heroku at: https://pure-dusk-6179.herokuapp.com/

Known issues:
No ability to assign or create an administrator.
User has to be logged in to create a new post or comment, but anyone can edit, delete, or upload photos.
Site is barebones and ugly.
Website structure not particularly well thought out. (Not really a functioning website intended for public use, rather a sloppy exercise in learning how to make stuff in rails.)
