# Ruby on Rails Group our transactions app

> This application help students clock in their studies based on their subjects. They can track the number of hours they spend studying on a specific subject.
> The app also allows students to clock in their non academic activities.

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4
- Devise
- Bootstrap
- HTML
- CSS

## Live Demo

Open [Live Demo](https://secure-garden-76181.herokuapp.com)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems and dependencies with:

```
  bundle install
  yarn install
```

Setup database with:

```
  rails db:create
  rails db:migrate
```

### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Open a PR from the `feature/branch` when your work is done.

### Usage

Start server with:

```
  rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
  rpsec --format documentation
```

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

- Microverse
- Stand up Team
- TSEs
- Web Cruch

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
