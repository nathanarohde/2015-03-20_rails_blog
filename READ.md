Crappy Blog Program created by Nathan Rohde copyright Nathan Rohde 2015

Blog displays posts, uploads photos, allows for comments to be attached to posts.

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

Non Ajax version hosted of heroku at: https://pure-dusk-6179.herokuapp.com/

Ajax version not deployed on heroku.

Known issues:
No ability to assign or create an administrator.
User has to be logged in to create a new post or comment, but anyone can edit, delete, or upload photos.
Site is barebones and ugly.
Website structure not particularly well thought out. (Not really a functioning website intended for public use, rather a sloppy exercise in learning how to make stuff in rails.)
Tests are incomplete, currently stymied by trying to figure out how to target a click_on command using :xpath in capybara.

No implemenation of Twilio.  At all.  None. Nada.
