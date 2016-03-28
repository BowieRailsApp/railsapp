### Project #4:

---

### Technologies Used(To be updated):
* HTML/CSS
* Ruby
* Rails
* Postgres/SQL

---

### User Stories:


* As a guest, there should be a landing page that allows me to sign up/login for the application
* As a guest, I should be able to sign up for the application
* As a member, I should be able to log in if i already have an account
* As a member, my homepage should let me select a party of customers
* As a member, my homepage should let me select food items the customers have ordered
* As a member, my homepage should let me see a see a receipt
* As a member, I should be able to log out of the application

#### Admin
* As a admin, I should be able to log in to the application
* As a admin, I should be able to add a new menu item
* As a admin, I should be able to remove an existing menu item
* As a admin, I should be able to edit an existing menu item
* As a admin, I should be able to log out of the application

---

### DataBase Design(To be added):
#### Entity Relationship Diagram version 1:
---

### ERD:
![alt text](erd2.png)

### Wireframes:
![alt text](app/assets/images/orders.png)

#### Sign in | Log in Page
By default, users will be redirected to the signup/login page if they are not logged in.

#### Order page
The orders page will have two levels. The first level consist of square grids that represent orders placed.

On selection of a grid, a more detailed view will appear. This view will show the current order and the receipt on the side.

Users will be able to edit orders.
When finished, users can print the receipt.

#### Admin/Menu Page
The menu page will display the current menu.
A selection of actions will be displayed on the side. These actions will allow the user to update, add, and delete items from the menu.

#### Chefs Page
The chefs page will display orders in rectangular grids. These grids will come in the order that they are placed in. As time progresses, orders will change from green to a reddish color. The redder the order, the longer it's been there.

Checkboxes can be shown at each order. These check boxes allow for the removal of the order upon completion.

## Authors
* Sara Horowitz
* Razaik Boparai
* Elton Cheng
* Dan Lawrence
