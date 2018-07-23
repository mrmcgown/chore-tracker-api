# Full Stack Project Practice

Be prepared to discuss these items with a consultant during a 1 on 1.

You may use GitHub, PowerPoint, Keynote, or any other tools you desire to
complete any part of this.

## Project Idea

What is your project idea?  How did you come up with it? Why? Who would use it?

```md
My project idea is an app for to keep track of a family's or group's chores. I came up with it thinking about my own family and how we go about handling and distributing chores. Although there are already similar apps available, I believe I will be able to come up with some nuanced features and ux design.
```

## Write between 3-5 user stories

We have gone over this before. Please refer to your notes, previous repos or the
google machine if you need further assistance.

```md
As a user, I want to be able to sign up for an account.

As a user, I want to be able to sign in using my username and password.

As a user, I want to be able to sign out of my account.

As a user, I want to be able to change my password.

As a user, I want to be able to join a group/family.

As a user, I want to be able to create a new chore.

As a user, I want to see which chores I have been assigned(by the admin).

As a user, I want to provide the name of the chore.

As a user, I want to enter the estimated time to complete the chore.

As a user, I want to input whether the chore is finished.

As a user, I want to input the frequency with which the chore needs to be completed.

As a user, I want to update and/or check when the chore was last completed.

As an admin, I want to create a new group/family.
 
As an admin, I want to assign a user to complete that chore.

As an admin, I want to view all chores and asscoriated data belonging to my group/family.

```

## Plan your tables and columns

What tables will you need? What will the columns on the table be?

```md
I have a Users table that will include an id, name, and age. I also have a Chores table that will include an id, user id, name(of the chore), estimated time to complete, is finished?, frequency(i.e. needs to be completed every x number of days), and the date the chore was last completed.
```

## Create an ERD (entity relationship diagram)

These are the diagrams that show how your tables are related to one another
(one to many, many to many, etc).

Include an image (or a link to image) below.


![alt text](https://i.imgur.com/fQHRsXwl.jpg)


## Routing

What routes will you need to make the proper request to your API?

```md
GET, POST, PATCH, DELETE, INDEX, SHOW
```

## 3rd Party APIs

Do you plan to use any, if so what are they?

```md
Not at this time.
```

## Wireframes

Please create a wireframe of your planned front end.

![alt text](https://i.imgur.com/Xmqv7P2l.jpg)
![alt text](https://i.imgur.com/isWJpapl.jpg)


## Timetable

Write a basic timetable for yourself, you don't have to stick to it but it
helps to go in with a plan.

```md
Day 1 - Planning (User Stories, Wireframes, & ERD)
Day 2 - API setup & Client setup (templates and deploying)
Day 3 - API Side 
 Review rails-api-one-to-many or rails-api-many-to-many
 Scaffold your resource
 Test your resource's end points with curl scripts
 Update resource controller to inherit from Protected or OpenRead controller
 Test your resource's end points with curl scripts
 Add the relationship to a User
 Add User ownership to resource controller
Day 4 - Client Side (part 1)
 Review api-token-auth
 Sign Up (curl then web app)
 Sign In (curl then web app)
 Change Password (curl then web app)
 Sign Out (curl then web page)
 All API calls have success or failure messages
Day 5 - Client Side (part 2)
 Review query-ajax-post
 Create resource (curl then web app)
 Get all of their owned resources (curl then web app)
 Delete single resource (curl then web app)
 Update single resource (curl then web app)
Day 6 - Final Touches
 README
 Troubleshoot/Debug
 Style
```
