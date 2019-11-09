

# e-commance marketplace website(Goodgiving)

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







## 13.Provide your database schema design(R19)

![menua](docs/heng-T2A2-Marketplace-project-schema1.png)

![menua](docs/heng-T2A2-Marketplace-project-schema2.png)

![menua](docs/heng-T2A2-Marketplace-project-schema3.png)

![menua](docs/heng-T2A2-Marketplace-project-schema4.png)

![menua](docs/heng-T2A2-Marketplace-project-schema5.png)



