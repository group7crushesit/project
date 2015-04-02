# General Assemby Social Network
## Table of Contents
**[Introduction](#introduction)** <br>
**[Minimum Viable Product](#minimum-viable-product)** <br>
**[User Stories](#user-stories)** <br>
**[Milestones](#milestones)** <br>
**[Execution](#execution)** <br>
**[Sitemap, Wireframes and ERD](#sitemap)** <br>
**[Wishlist](#wishlist)** <br>
**[Resources](#resources)** <br>
**[Contributors](#contributors)** <br>

###Introduction
#### Elevator Pitch

A social network for folks who study, teach and work at General Assembly. Where they can find GA folks in all cities around the world, network or seek out their help. 

#### Brief Intro

We are 4 students that are currently enrolled in General Assembly's Web Development immersive program. As part of GA, the community aspect of is huge but at the same time we have struggled to to interact with other folks in other classes and found it really difficult to find out who is part of GA, what are they studying and networking with them.  

We are not just a tight crew as part of the immersive course but feel that it would be awesome to extend that to all folks who walk through GA's front doors and take a class there. The value of this network would allow users to seek alumani who work at companies you want to work at, finding roommates, folks in a new city, rideshares and so forth. 

####Minimum Viable Product

To allow a user to create a profile with their contact details and create boardposts for rideshares, finding apartments or roommates and job posts. The product should have a similar look and feel as other General Assembly products as well as be accessible by a smart device. 

####User Stories

  - User should be able to register as a student or part of GA's staff for the site.
  - User should be able to complete their profile with content about themselves as well as links to their portfolio and contact information
  - User should be able to create boardposts
  - User should be able to view other's boardposts


####Milestones

**Day 1:**
Researched possible ideas and potential deliverables and feasability for each idea. Define MVP and create initial tasks and user stories<br>
**Day 2:** 
Build basic rails app with no frills, practice Git and how to do group check-ins<br>
**Day 3:** 
Design sitemap and models. Design basic wireframes and userflow<br>
**Day 4:** 
Create basic RSPEC validations. Build up basic user, board and sessions models, controllers and views<br>
**Day 5:**
Add authorization. Further define user and board models and views (and validations). Install bootstrap and UI Kits<br>
**Day 6:**
Bridge front and backend together. Add location API<br> 


####Execution
Set out to create a really basic app to allow us to be able to meet our MVP. We knew there would be a learning curve to using Git as a group to manage version and code control for our project. Even though we practiced with very little code written, we still faced major issues getting into any kind of rhtyhm. After many forced pulls, losing data and worst deleting our files, we started getting into a flow and forcing ourselves to do code review, deal with migration conflicts head on and be able to manage branching, committing and pushing without nightmares or stressing out over it.

Split the app into 2 pieces, where we had Bryan and Stephen work on the front-end. Alex and Ajesh were working on the back-end. Our plan was to meet in the middle without letting the look and feel and the code for it affect our ability to build out our app. This also reduce the risk of our app from breaking often and we were able to quickly resolve Git commit and merge issues. 

Enlisted the help of the folks from the UX class to help validate our idea, our approach to it and get feedback on our implementation.


####Sitemap
![screenshot of sitemap](https://lh6.googleusercontent.com/-Wc_U5KII1lA/VMuATVEH8PI/AAAAAAAAU24/Ye69JT5wom0/w2172-h762-no/ga_socialnetwork_sitemap.png)


####Wireframes
![screenshot of wireframe-1](https://lh3.googleusercontent.com/-jV_2ioFfROU/VMvXOKHiXBI/AAAAAAAAU4Q/ND0ubpmAjpQ/w972-h1296-no/photo%2B%283%29.jpg)
![screenshot of wireframe-2](https://lh3.googleusercontent.com/-uyieCEdgyGQ/VMvXOZGVMSI/AAAAAAAAU4U/e9xImA1Mxng/w972-h1296-no/photo%2B%284%29.jpg)

####Entity–Relationship Model (ERD)
#####First Approach
![screenshot of ERDv1](https://lh5.googleusercontent.com/-AJElwLWb9ug/VMuAU1d707I/AAAAAAAAU3A/hLE8ZmNx8o4/w1728-h1296-no/photo.jpg)
We initially were planning to keep the user and GA associated roles as seperate databases so that we could also provide an option for guest users. The goal was to have a 1-Many association for users to board posts, where a user could have multiple posts associated with them. A user would potentially also belong to the GA and where their basic profile would be built with further associations to models based on their role. We realized that it would have added complications on our user profile and our target audience was first internal GA folks. 

######Second Approach
![screenshot of ERDv2](https://lh6.googleusercontent.com/-4RCHW6Ar3mA/VMuAhyrV5oI/AAAAAAAAU3k/ESRKjWC3CXM/w1980-h1116-no/GA_SocialNetwork_ERDv2.png)
In our second approach, we unified the user and GA roles into one table and set boolean values based on the type of role they could have. Used many to many for users and courses with a joint table association for their ids. Similar many to many model was used for user profiles and their skills and interests.
[![IMAGE ALT TEXT HERE]--insert second iteration of ERD

####Wishlist
~~Customizable Profiles~~<br>
~~Extended Profiles (Social Links)~~<br>
Autocomplete course directory<br>
Filter Board based on board type<br>
Board Item should expand on click<br>
Search and view all users<br>
Autocomplete skills and interests<br>
Auto-expire posts<br>
Email Notifications for new board postings<br>
Twitter-like feed and posting<br>
Allow outsiders to post to the job board<br>

####Outstanding issues
User form not submitting<br>
Not Partialized<br>
Divs are overflowing<br>
Login / Signup not removed after user is signed in<br>
Heroku<br>
Add more rspec validation<br>
Add Skills / Interests / Courses to user form

####Resources
######(GEMS, APIs, frameworks, Toolkits and other Resources)
######Languages and framework used: 
Ruby on Rails app, with assist from jQuery and ajax calls. 
######Database: 
Postgres 
######UI:
Boostrap, Less and [Material Design UI Kit](http://fezvrasta.github.io/bootstrap-material-design/)
######Authorization:
Bcrypt for hashing passwords
######API:
Typhoeus to make API calls<br>
[Geocode Location Lookup](https://www.mashape.com/montanaflynn/geocode-location-lookup) to reverse look up city of users
######Other:  
Will_Paginate: Pagination<br>
DotEnv: Hiding API keys<br>
Geolocation: in-built browser capability to get IP address of users<br>



####Contributors
[Ajesh Shah](https://github.com/ajeshh)<br>
[Alex Fulsome](https://github.com/alexfulsome)<br>
[Bryan Hernandez](https://github.com/Bryan1207)<br>
[Stephen Lathbury](https://github.com/daddybyte)<br>

