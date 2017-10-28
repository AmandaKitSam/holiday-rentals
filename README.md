# PROJECT - Holiday Rentals

## By Amanda Sam

### Framework of the project: Ruby on Rails

### The project also involves: JavaScript, AJAX, jQuery, SCSS, Bootstrap and Google Map API

* Ruby version: 2.4.0

* Rails version: 5.1.4

* Database: PostgreSQL

* API: Google Map API

* Gravatar feature added

* Gemfile: gem 'toastr-rails' (To make the notification appear nice)

## About the Project:

- Find your ideal accommodation for your next trip:

- Step 1: Users can sign up and create their User Profile page on the website.

- Step 2: User's photo is connected with Gravatar. If the user has uploaded photo with Gravatar, user's photo will automatically appear at the nav bar next to user's name and email after user has logged in. (Otherwise, it will appear as numbers.)

- Step 3: Users can create rooms by clicking 'List Your Place' after sign up/sign in. You can add photos, listing details, price(per/night), description, amenities & location for the room.

- Step 4: Once the room is ready for rent, it will be saved in the database. Other users can search for the room and make reservations.

- Step 5: Users can manage their listings and update their rooms.

- Step 6: Users can view a list of their rooms at the listing page and the user's profile page.

## Models:

* Users - Authentication with full name, email, password; also added phone number, description and more

* Rooms (Associated with Users) - Listing name, summary, address, price(per night), home type, room type, accommodate(integer), bed room(integer), bath room(integer); also added Amenities such as if the room includes TV / kitchen / internet and more

* Photos - (Associated with Rooms) User can add photos for their rooms to promote their places.

* Reservations - (Associated with Rooms & Users) User A can create a room for rent. Other users can make reservation for the room.

-------------------------------------------

Please visit the website:
https://holiday-rentals.herokuapp.com/
