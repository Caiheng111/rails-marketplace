

# E-commance website(Goodgiving)

## contents
1. Identification of the problem you are trying to solve by building this particular marketplace app.(R7)
2. Why is it a problem that needs solving?(R8)
3. A link (URL) to your deployed app (R9)
4. A link to your GitHub repository (R10)
5. Description of your marketplace app (website)(R11)
6. User stories for your app(R12)
7. Wireframes for your app(R13)
8. An ERD for your app(R14)
9. Explain the different high-level components (abstractions) in your app(R15)
10. Detail any third party services that your app will use(R16)
11. Describe your projects models in terms of the relationships (active record associations) they have with each      other(R17)
12. Discuss the database relations to be implemented in your application(R18)
13. Provide your database schema design(R19)
14. Describe the way tasks are allocated and tracked in your project(R20)



## 1.Identification of the problem you are trying to solve by building this particular marketplace app.(R7)
The advent of the mobile Internet era has really begun to make donation and sharing an integral part of our lives,and the era of mobile social welfare is coming.

The power of mobile new Internet is booming in the Chinese public welfare sector. Whether it is the public or the public welfare organizations, the public media has consciously and unconsciously participated in the transformation of China's public welfare undertakings. With the increasing number of media, the Internet era has changed to the era of mobile Internet. The propaganda and dissemination of traditional philanthropy is gradually changing. The philanthropy needs to be more popular and transparent. How can philanthropy be understood by more people and how to adapt to the needs of the current people?

In the traditional way of working, charities will pool the funds raised from individual donors and choose areas that have important value for social development: health, poverty alleviation, culture, etc., responsible for the significance, value, implementation of the project. Assessment and supervision of effects and other aspects. The charity will inform the donor through various channels regarding the project, implementation effect and spending rules it chooses. This way of reviewing donations through intermediaries is not easy to trust the donors.



## 2.Why is it a problem that needs solving?(R8)

The purpose of the Goodgiving is to remove the intermediary. The website itself serves as a donation platform. After the local community government or related agency company publishes the donation project, people can browse directly on the website. The amount of the donation of the website management organization is controlled by everyone. Scope, unlike a donation website, donors do not need to make monthly donations. Goodgiving's donations go out completely and voluntarily. After understanding the specific story and background of the project, the donor class randomly chooses to donate a small amount. Donors can also directly communicate with the organization that initiated the project to learn more about the project and decide whether to make a donation. Without third-party intermediaries, donors are more likely to believe in the authenticity and reliability of donations. Even after learning about the project background, you can register as a voluntee on the website.

I believe that with the promotion of Goodgiving, more and more public welfare projects hope to use the new media to let more power to pay attention to public welfare and promote the development of public welfare. More and more non-profit organizations hope to change the previous official authority image and turn public welfare into a career that everyone can participate in.

The changes brought about by the Goodgiving online donation model are not limited to expanding the source of donations. The high degree of transparency makes the intermediaries almost invisible, allowing the recipients to deal directly with the sponsors. This form of approaching SNS not only allows donors to feel a sense of personal meaning from the freedom of choice, but also allows recipients to feel support from the community rather than a string of numbers added to the account.


## 3.A link (URL) to your deployed app(R9)

```txt
 https://goodgiving.herokuapp.com/
```


## 4.A link to your GitHub repository(R10)

```txt
 https://github.com/Caiheng111/rails-marketplace
```


## 5.Description of your marketplace app (website)(R11)

  * ***Purpose***

      The purpose of the Goodgiving is to remove the intermediary. The website itself serves as a donation platform. After the local community government or related agency company publishes the donation project, people can browse directly on the website. The amount of the donation of the website management organization is controlled by everyone. Scope, unlike a donation website, donors do not need to make monthly donations. Goodgiving's donations go out completely and voluntarily. After understanding the specific story and background of the project, the donor class randomly chooses to donate a small amount. Donors can also directly communicate with the organization that initiated the project to learn more about the project and decide whether to make a donation. Without third-party intermediaries, donors are more likely to believe in the authenticity and reliability of donations. Even after learning about the project background, you can register as a voluntee on the website.


  * ***Functionality / features***

    1. Login and sign up function (mutilple users)
        User gem devise to set the multiple user authentication, user can sign up as a donor/voluntter or a organization. Once they signup, they can login and update their password.
        *  When sign up as a organization（as a new organization）, the navbar will show the link profile, after clicking that link, the organization can add their profile information.

        * A dropdown menu will show out (including post a project/All projects/edit profile/Message), once the organization add their profile information on website.

        * When sign up ad a donor, donor can send message to the organization who post that project and donate money.

        * When sign up as a volunteer, the navbar will show the link profile, after clicking that link, the volunteer can add their profile information.
  

    2.  authentication for donating and sending message 
        * User who hae not logined or signed up can't donate and send messages each other. they only can browse the website

    3.   authentication and security for user and project information
        * User only can access to their inly profile or edit(delete) their own projects. if they try to access other user's information, they will be leaded to the home page

    4.  Searching, sorting and filtering capability
        * In the proejcts listing page, user can search the project by key word
        * In the proejcts listing page, user can choose projects by location listing
        * In the proejcts listing page, user can choose projects by project category listing

    5.  page separation function
        * Used gem 'will-pagination' to divide the proejcts

    6.  show the raised percentage in project
        * User can see the raised percentage in project 

    7.  Internal user messaging system within the app
        * User can send message each other when they logged in
        

    8.  A payment system for your product. (e.g. Stripe)
       * Setted Stripe to finish the payment function

    9.  Admin user account for the admin user to administer the site
      * Add the admin user authentication to manage the wensite information
      * Admin user can edit or delete all projects information and user profile information

    10. responsive layout for phone size



  * ***Sitemap***

   ![menua](docs/heng-T2A2-Marketplace-sitemap.png)



  * ***Screenshots***


  ![menua](docs/heng-T2A2-Marketplace-screenshot1.png)

  ![menua](docs/heng-T2A2-Marketplace-screenshot2.png)

  ![menua](docs/heng-T2A2-Marketplace-screenshot3.png)

  ![menua](docs/heng-T2A2-Marketplace-screenshot4.png)

  ![menua](docs/heng-T2A2-Marketplace-screenshot5.png)

  ![menua](docs/heng-T2A2-Marketplace-screenshot6.png)




  * ***Target audience***

    *  Organizations or Communities who need raise money for local people.
    *  Donor who are happy to donate a liite money to spme commmunities which need help.
    *  Volunteer who are happy to join a project to offer help.


  * ***Tech stack (e.g. html, css, deployment platform, etc)***

    *  HTML5
    *  CSS3
    *  jQuery
    *  AWS s3
    *  Heroku
    *  Ruby gems
    *  Bootstrap 4
 

## 6.User stories for your app(R12)


* ***user(Organizations)***

  *  As organizations or a communities, they can sign up as a website user and can login and update their            password. 
  *  As organizations or a communities, they can add and edit their basic profile information.
  *  As organizations or a communities, they can post a project to raise money for their local people,and they       also can donate to other communities for helping each other.
  *  As organizations or a communities, they can message to the donor or volunteer to give more details about        this project and reply any messages from the donors and volunteers.
  *  As organizations or a communities, they can edit and delete their projects on website.

* ***user(Donors)***

  *  As donbors, they can sign up as a website user and can login and update their password. 
  *  As donors, they can see all the projects on the website.
  *  As donors, they can send message to organization who post that project to ask project details or other sdetails.
  *  As donors, they can donate more than one project at one time.
  

* ***user(Voluntters)***

  *  As volunteers, they can sign up as a website user and can login and update their password. 
  *  As volunteers, they can add and edit their basic profile information.
  *  As volunteers, they can join a project to be a volunteer.(Required review and approval by website regulators    and corresponding organizations )



## 7.Wireframes for your app(R13)

```txt
 1.Projects information page
```
![menua](docs/heng-T2A2-Marketplace-project-show.png)


```txt
 2. Login in and other silimar form page (template)
```

![menua](docs/heng-T2A2-Marketplace-login-form.png)

```txt
 3. Message board page
```

![menua](docs/heng-T2A2-Marketplace-message-board.png)

```txt
 4. projects listing page
```

![menua](docs/heng-T2A2-Marketplace-project-projects-listing.png)

```txt
 5. responsive page 1
```

![menua](docs/heng-T2A2-Marketplace-project-responsive1.png)

```txt
 6. responsive page 2
```

![menua](docs/heng-T2A2-Marketplace-project-responsive2.png)


## 8.An ERD for your app(R14)

![menua](docs/heng-T2A2-Marketplace-ERD.png)








## 10.Detail any third party services that your app will use(R16)

* ***AWS(S3 buket)***

    1. AWS (Amazon Web Services) has a solution we can use called S3. S3 is for data storage that you can access via a url, which can be usered to store the images in my rails proejct.

    *  sign in to AWS
    *  Go to S3 and create a new bucket
    *  Enter a unique bucket name and make sure your region is set to Asia Pacific (Sydney)
    *  We need to setup a new user that will have access to this bucket.
    *  enter a username and unique bucket name.
    *  Copy down your access id and secret once your create a user sucessfully
    * When it opens up the file add in our keys, save and close.(EDITOR="code --wait" rails credentials:edit)
    * bundle add aws-sdk-s3 and amend files in (config/environments/development.rb & config/environments/           production.rb)
    * When it opens up the file add in our keys, save and close.(EDITOR="code --wait" rails credentials:edit)


* ***Heroku deploy***

    * cd Goodgiving
    * git init
    * Initialized empty Git repository in .git/
    * git add .
    * git commit -m "My first commit"
    * heroku create
    * git push heroku master
    * heroku rake:db migrate
    * heroku apps:rename goodgiving

 * ***Stripe Payment***

    * bundle add stripe
    * Login stripe and set API key
    * Add the API key in rials (EDITOR="code --wait" rails credentials:edit)
    * using Stripe’s checkout to charge our users' credit card
    * Add webhook to provide information



## 11.Describe your projects models in terms of the relationships (active record associations) they have with        each other(R17)









## 12.Discuss the database relations to be implemented in your application(R18)







## 13.Provide your database schema design(R19)

![menua](docs/heng-T2A2-Marketplace-project-schema1.png)

![menua](docs/heng-T2A2-Marketplace-project-schema2.png)

![menua](docs/heng-T2A2-Marketplace-project-schema3.png)

![menua](docs/heng-T2A2-Marketplace-project-schema4.png)

![menua](docs/heng-T2A2-Marketplace-project-schema5.png)



## 14. Describe the way tasks are allocated and tracked in your project(R20)

 * ***App Plan Management***

    * Decide a idea
    * Graw the ERD draft
    * Finish the first ERD
    * Look for some website design to inspire the website layout
    * check all relationship between models
    * Add devise to create multiple users
    * Add organization , volunteer  and donor models
    * Add organization , volunteer  and donor controllers and views
    * Add navbar
    * Add organization profile page and projects page
    * Add voluntter profile page 
    * Add charities model and controllers
    * Add the cart function and stripe function
    * Add message board function
    * Add sort and filter fucntion
    * Add bootstrap to design layout(responsive)
    * heroku deploy and enter data
    * check all function if work in after deployed
    * Add css media query to layout responsive


![menua](docs/heng-T2A2-Marketplace-project-management.png)

