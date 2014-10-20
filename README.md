#What's Cooking

##Description

This site allows users to create and share recipes.  A user can add photos, make favorites, search for and tag recipes to their own created categories to keep track of them.

This is still a work in progress with some minor bugs and fixes that need to be addressed.  If testing site, please make sure that recipe and ingredient names are not capitalized and each ingredient is separated with a comma for search function to work properly.

##Setup
 In your terminal, clone this repository:

 $ https://github.com/anaholagirl/whats_cooking.git

 Make sure you've installed [PostgreSQL](http://www.postgresql.org/download/).

 Install all the dependencies:

 $ bundle install

 Set up the databases on your local machine:

 $ rake db:create
 $ rake db:schema:load+

 Start the rails server:

 $ rails s

 Now, it will be available at `http://localhost:3000`.

 ##Author:

 Linda Gibson

 ##License

 MIT

