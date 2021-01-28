# Ruby on Rails Group our transactions app

> This application help students clock in their studies based on their subjects. They can track the number of hours they spend studying on a specific subject.
> The app allows students to clock in their non academic activities as well.
> Students can create many subjects as well as many clockings.
> They can create many clockings per subject.

## Entity Relationship Diagram

![ScreenShot](https://github.com/BigWizzo/RoR-Capstone/blob/deploy/erd.png)

## Built With

- Ruby v2.7.0
- Ruby on Rails
- PostgreSQL
- Devise
- Bootstrap
- HTML
- CSS

### Tested With

- Ruby gem RSpec
- Ruby gem shoulda Matchers
- Ruby gem capybara

## Live Demo

Open [Live Version Link](https://secure-garden-76181.herokuapp.com)

### Prerequisites

- Ruby: 2.6.3
- Rails: 5.2.3
- Postgres: >=9.5
- Yarn
- Text Editor

## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup

- Open the console
- Download or git clone https://github.com/bigwizzo/RoR-Capstone.git
- cd RoR-Capstone
- run `bundle install`
- run `yarn install`
- run `rails server`
- run `rails db:create`
- run `rails db:migrate`
- Open `http://localhost:3000/` in your browser.

### Run Tests

- run `rpsec --format documentation`

### Deployment

- In the console
- run `create heroku`
- run `git push heroku main`
- run `heroku run rake db:migrate`
- run `heroku open` to open the application

## Authors

👤 **Will Nyamunokora**

- Github: [@bigwizzo](https://github.com/bigwizzo)
- Twitter: [@willnyamunokora](https://twitter.com/willnyamunokora)
- Linkedin: [@willnyamunokora](https://linkedin.com/in/willnyamunokora)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/BigWizzo/RoR-Capstone/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Railsguides
- Microverse
- Stand up Team
- TSEs
- Web Cruch

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
