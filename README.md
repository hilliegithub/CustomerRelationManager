# README

### This is my Agile Full Stack - Ultimate Challenge 6 ###

*** This is a challenge in three parts. In this challenge we will be building a simple CRM.***

When working on this challenge you should be actively researching Rails using the following resources:

    api.rubyonrails.org
    http://guides.rubyonrails.org (Specifically the sections on Active Record Queries, Routing, Partials, and Migrations.)
    Our Course Notes: Rails Overview Notes and Git Overview Notes

*** SETUP RAILS ***

    Generate a Customer model:
        Full name
        Phone number
        Email Address
        Notes (of type text, whereas all other above fields are strings)
    Migrate the customers table to the db.
    Add Active Admin to the project and configure it to be able to CRUD customers.
    Add an image to the Customer model using ActiveStorage and configure ActiveAdmin to allow you to upload this image
    Use the Admin CRUD to add at least 5 customers to your database. Ensure that some customers are missing email addresses.
    Add a few validations to the customer model. For example, you should likely be ensuring the presence of at least the full name.
    Add and commit the initial Rails project repo and push to an associated github repo.



*** PART 1 - PREPARE A PARTIAL FOR CUSTOMERS ***

    Create a partial for displaying customer info: app/views/customers/_customer.html.erb
    See the image at the end of this file for an example look/feel for this partial. You don't need to match the styling exactly. Feel free to use Bulma to handle the styling.
    Be sure your partial uses the image_tag helper to display the customer's image.
    You may wish to develop this partial as you implement the views in part 2.
    Git add/commit and push to your remote github repository.



*** PART 2 - A NEW CONTROLLER ***

    Generate (using "rails g") a new controller called customers.
    Create an index action/view for this controller.
        This action should use the Customer model to find all customers.
        The view should display all the customers found by the action.
        Each customer should be displayed using the partial created in the previous section.
    Create a alphabetized action/view for this controller.
        This action should use the Customer model to find all customers, ordered by name.
        The view should display all the customers found by the action.
        Each customer should be displayed using the partial created in the previous section.
    Create a missing_email action/view for this controller.
        This action should use the Customer model to find all customers that are missing email addresses.
        The view should loop through all the customers found by the action (again using the partial for display).
    Add three routes to your routes.rb file to make these new actions are accessible via URLs.
        Your URL route for the finder index action should be '/'
        Your URL route for the finder missing_email action should be '/customers/missing_email'
        Your URL route for the alphabetized action should be '/customers/alphabetized'
        You can either manually create these routes, or follow these instructions to augment Rails RESTful resource routes.
        The index view should link to the missing email view and alphabetized view, and vice versa.
    Styling: You can either use Bulma/Bootstrap or add CSS to the app/assets/stylesheets/customer.scss file such that your views look similar to the image below.

    Git add/commit and push to your remote github repository.

    Submit to the challenge dropbox with your github repo URL in the submission comment.

PS. Active Admin credentials is in the db/seed.rd file