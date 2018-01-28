# PROJECT - Holiday Rentals :house:

## Built By Amanda Sam

### Framework of the project: `Ruby on Rails`

### The project also involves: `JavaScript`, `AJAX`, `jQuery`, `SCSS`, `Bootstrap` and `Google Map API`

* Ruby version: 2.4.0

* Rails version: 5.1.4

* Database: PostgreSQL

* Storage: Amazon Web Services - Amazon S3

* API: Google Map API

* Gravatar feature added

## About the Project:

- User and sessions functions | User authentication and validation before reservations

- Step 1: Users can sign up then create the user profile page before they list their rooms.

- Please note: User's photo is connected with Gravatar. If the user has uploaded photo with Gravatar, user's photo will automatically appear in the account. (Otherwise, it will appear as numbers.)

- Step 2: Users can create rooms by clicking 'List Your Place' | 'Become A Host' after sign up/sign in. You can add photos, listing details, price, description, amenities & location for the room.

- Search function: Room search function is executed through an AJAX request

- Step 3: Once the room is published, it will be saved in the database. Other users can search for the room and make reservations.

- Reservation of the room can be instant booking | request booking<br/>
Instant booking: user can book the room immediately;<br/>
Request booking: user need to wait for approval from the host. The host can choose to approve or decline.

- Step 4: The hosts can manage their listings and update their rooms.

- Step 5: The hosts can view a list of their rooms at the listing page and their profile page.

- Host Calendar: reservations & prices showing on the calendar

## Models:

* Users :busts_in_silhouette: - Authentication with full name, email, password; optional for phone number and description

* Rooms :house_with_garden: (Associated with Users) - Listing name, summary, address, price(per night), home type, room type, accommodate(integer), bed room(integer), bath room(integer); also added Amenities such as if the room includes TV :tv: / bath :bath: / internet :computer:

* Photos :sunrise: - (Associated with Rooms) User can add photos for their rooms to promote their places.

* Reservations :book: - (Associated with Rooms & Users) Users can make reservation for the room of their choice.

* Calendar :calendar: - (Associated with Rooms) Calendar Availability Model

-------------------------------------------

Please visit the website:
https://holiday-rentals.herokuapp.com/
