# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails by example.

Simulated working with legacy code by adding new features such as:
- Sold Out badge when item has 0 quantity
- Enhanced Order Details page, outlining User order
- Addition of Admin login/password
- Addition of Admin Categories
- Enhanced Cart page when nothing is in cart


## Screenshots
!["Products Page"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.45.09%20PM.png?raw=true)
!["Purchase Order Details"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.44.39%20PM.png?raw=true)
!["View/Create New Product(s) as Admin"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.45.29%20PM.png?raw=true)
!["View/Create New Category(s) as Admin"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.45.45%20PM.png?raw=true)
!["Cart With Items"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.46.15%20PM.png?raw=true)
!["Sign Up"](https://github.com/akbartels/jungle-rails/blob/master/public/screenshots/Screen%20Shot%202020-06-03%20at%202.46.26%20PM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
