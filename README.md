[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield2]][linkedin-url2]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Hireable][hireable]][hireable-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
 <h2 align="center"> Rails Application With a basic Authentication system </h2>

  <p align="center">
    Ruby on rails project that is based on a user authentication system using cookies and sessions
    <br />
    <a href="https://github.com/Jaakal/authentication"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Jaakal/authentication">View Demo</a>
    ·
    <a href="https://github.com/Jaakal/authentication/issues">Report Bug</a>
    ·
    <a href="https://github.com/Jaakal/authentication/issues">Request Feature</a>
  </p>

</p>

## Table of Contents
* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Required Installations](#Required-Installations)
  * [Prerequisites](#Prerequisites)
  * [Installing](#Installing)
  * [Instructions](#Instructions)
* [Contact](#contact)
* [Contributing](#Contributing)
* [Show your support](#Show-your-support)

## About The Project

![Screenshot Image](app/assets/images/logoRepo.png) 

### Built With
The project was developed using the following technologies:
- [Ruby](https://www.ruby-lang.org/es/)
- [Ruby on rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/docs/4.4/getting-started/introduction/)

## Required Installations

### Prerequisites

This project runs on [Ruby](https://www.ruby-lang.org/en/documentation/installation/), and [Rails](http://installrails.com/)
 
* Ruby
* Rails

After installation, run `ruby -v` to make sure Ruby installed correctly. Example
```
$ ruby -v
ruby 2.6.4p104 (2019-08-28 revision 67798) [x86_64-linux]
```

Also make sure that Rails is installed, but running `rails -v`. 
Example
```
$ rails -v
Rails 6.0.2.1
```

### Installing

<p>Install the following to get this project running in your machine:</p>

### Instructions

<p>Follow these steps:</p>

Clone the Repository

```Shell
user@pc:~$ git clone https://github.com/Jaakal/authentication
```

Click on the console and to go to the folder that was created

```Shell
user@pc:~$ cd authentication
```

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Run this command if you encountered a problem runing rails db:migrate

```
$ bundle exec rails db:migrate
```

Then run 

```
$ rails c
```

Create some users running the following code:
Code Snippet

```
$ user = User.create(name: "Joe", email: "Joe12@gmail.com", password: "joe123", password_confirmation: "joe123")
$ user = User.create(name: "Josepy", email: "Josepy@gmail.com", password: "Josepy123", password_confirmation: "Josepy123")

```
You are ready to run the app in a local server:

```
$ rails server
```

Open your browser on [http://localhost:3000](http://localhost:3000)

## Contact

<p align="center">

  Project Link: [https://github.com/Jaakal/authentication](https://github.com/Jaakal/authentication)

</p>

👤 **Yair Fernando Facio**

<a href="https://yairfernando67.github.io/Portfolio/" target="_blank">
    
  ![Screenshot Image](app/assets/images/logo.jpg) 

</a>

- Github: [@YairFernando67](https://github.com/YairFernando67)
- Twitter: [@YairFernando18](https://twitter.com/YairFernando18)
- Linkedin: [softwaredeveloperyairfacio](https://www.linkedin.com/in/softwaredeveloperyairfacio/)
- Email: [yair.facio11@gmail.com](https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=yair.facio11@gmail.com)
- Portfolio: [softwaredeveloper](https://yairfernando67.github.io/Portfolio/)



👤 **Jaak Kivinukk**

<a href="https://github.com/Jaakal" target="_blank">
    
  ![Screenshot Image](app/assets/images/profile.png) 

</a>

- Github: [@Jaakal](https://github.com/Jaakal)
- Twitter: [@JKivinukk](https://twitter.com/JKivinukk)
- Linkedin: [full-stack-developer](https://www.linkedin.com/in/jaak-kivinukk-7098b1153/)
- Email: [jaak.kivinukk@gmail.com](jaak.kivinukk@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Jaakal/authentication/issues).

## Show your support

Give a ⭐️ if you like this project!

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/Jaakal/authentication.svg?style=flat-square
[contributors-url]: https://github.com/Jaakal/authentication/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Jaakal/authentication.svg?style=flat-square
[forks-url]: https://github.com/Jaakal/authentication/network/members
[stars-shield]: https://img.shields.io/github/stars/Jaakal/authentication.svg?style=flat-square
[stars-url]: https://github.com/Jaakal/authentication/stargazers
[issues-shield]: https://img.shields.io/github/issues/Jaakal/authentication.svg?style=flat-square
[issues-url]: https://github.com/Jaakal/authentication/issues
[license-shield]: https://img.shields.io/github/license/Jaakal/authentication.svg?style=flat-square
[license-url]: https://github.com/Jaakal/authentication/blob/master/LICENSE.txt
[linkedin-shield2]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url2]: https://www.linkedin.com/in/softwaredeveloperyairfacio/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/jaak-kivinukk-7098b1153/
[hireable]: https://cdn.rawgit.com/hiendv/hireable/master/styles/flat/yes.svg
[hireable-url]: https://www.linkedin.com/in/softwaredeveloperyairfacio/