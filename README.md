#README

-----------------
WDI ATL Project 2
-----------------
Heroku: https://whispering-thicket-51264.herokuapp.com/

Github: https://github.com/Spencer-Lewis/Project-2

Trello Board: https://trello.com/b/KgJxWkah/project-2

----------------------------
Included in this repository:
----------------------------

All necessary files and folders for play:

**HTML.ERB files**
  1. edit, new, show, index, _form views and partials for posts
  2. edit, index, new, and show views for comments
  3. application.html.erb - layout
  4. All views included by the Devise Gem

**CSS**
  1. application.css                           styling for all view pages

**Rails**
  1. app, bin, config, db, log, public, tmp, and vendor file folders

---------
The App:
---------
The application Reddthat is a Reddit-like application. Users can register an account with the application. Upon registration, users can then post content to the site, or comment on user posts (lurking is ok too, comments and posts can be viewed without creating an account).

Reddthat is a secure application where comments and posts can only be created by a logged in user, and only comments and posts can only be edited/deleted by the user who created them.

The posts themselves consist of a post title, an image URL (the image is then rendered in the post), and a source link to where the post came from. Comments are a string attached to a post that display on the show page for that post.

Posts are tied to the user ID of the user that created them. Comments are tied to both the User ID of the commentor and post ID of what the comment relates to.

-------
To Run:
-------
1. The Application can be accessed online:
  - https://whispering-thicket-51264.herokuapp.com/

2. The repo for the application can also be accessed via Github.
  - https://github.com/Spencer-Lewis/Project-2

-----------------
Technologies Used
-----------------
-Languages: HTML, CSS, Ruby

-Rails Framework

-Devise Gem

-Heroku: https://whispering-thicket-51264.herokuapp.com/

-----------------
Planned Additions
-----------------
-Upvoting and organizing posts by upvote score

-Admin priveleges to delete ornery users and their content.

-Mobile responsive

--------
Contact:
--------
-Author: Spencer Lewis

-Slack: Spencer-Lewis

-Github: https://github.com/Spencer-Lewis

-Email: Spencerlewis987@gmail.com
