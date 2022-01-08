  <a href="https://www.microverse.org/">
    <img alt="Microverse" src="https://img.shields.io/badge/-Microverse-blueviolet?style=flat-square">
  </a>

# Recipe App

Recipe App is a project from the fifth module of the Microverse program. With it, we learned how to build applications using the Ruby on Rails framework.

Recipe App is a blog-based application that lets you create a user, log in, create and share recipes with diverse food and ingredients. The application is built_in a way that you can only create a recipe and add food to your food list if you are logged into the site. Otherwise, you will only be able to see the public recipes.

You can navigate the pages using the Nav Bar. The Nav Bar has routes to different views depending on if you are logged in or not. The following links can be found there:

    - Public recipes.
    - My recipes.
    - My foods.
    - Shopping details.


Everything will be based on the ERD class diagram presented below. 

</br>
 <div align="center">
    <img alt="gif" src="https://user-images.githubusercontent.com/80895497/148618576-b354b357-1961-4e66-933a-eda9f463fe0e.png" width=50% />
    <p>Entity Relationship Diagram (ERD) of Blog App project</p>
</div>

## Getting Started
To run the project locally, copy up and running follow these simple example steps :

 - First of all make sure you have both `Ruby` & `Rails` installed in your machine
 (else You can install `Rails` just with this simple command  ```gem install rails```)
 - clone the project with the following command line : 
```
$ git clone git@github.com:Hamzaoutdoors/BLog_app.git
```
 - Then go to the right folder 
```
$ cd Blog_app
```
```
$ bundle
```
and run to install npm package
```
$ npm install
```

make sure the database is up and running.
```
$ rails db:create
```
When you will add migration file then, you can add command like
```
$ rails db:migrate
```

 - Finaly run `rails s` and visit http://localhost:3000/  in your browser!

 ## Run tests :

 To run Request specs locally you need just to run this following command in your terminal :

 ```
 $ bundle exec rspec
 ```
 </br>
 <div align="center">
    <kbd>
    <img alt="gif" src="https://user-images.githubusercontent.com/78378168/148622425-049b0099-e7b3-41c2-91ab-154a91201f0a.png" width=90% />
    <p>30 Request Specs passed</p>
       </kbd>
</div>

## Built With

 - Ruby on RAils  <img src="https://cdn.emojidex.com/emoji/seal/Ruby.png" width=15px>
 - PostgreSQL <img src="https://user-images.githubusercontent.com/80895497/142954032-f7072df9-3586-48f9-a9e0-7fdd284eb833.png" width=15px>
 
</br>

## Authors

👤 **Laylo Khodjaeva**

- GitHub: [@Laylo309](https://github.com/Laylo309)
- Twitter: [@Laylo](https://twitter.com/home?lang=en)
- LinkedIn: [LayloKhodjaeva](https://www.linkedin.com/in/laylo-khodjaeva-05a972207/)

👤 **Ellaouzi Hamza**

- GitHub: [hamzaoutdoors](https://github.com/Hamzaoutdoors)
- LinkedIn : [Hamza Ellaouzi](https://www.linkedin.com/in/hamza-ellaouzi-137a45b8/)
- Twitter: [Hamza Ellaouzi](https://twitter.com/EllaouziHamza)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Laylo309/Recipe-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Inspiration 💘
- Microverse program ⚡
- My standup team 😍
- My family's support 🙌
- MicroBros 😜

## 📝 License

This project is [MIT](https://github.com/Hamzaoutdoors/Blog_app/blob/dev/LICENSE.md) licensed.
