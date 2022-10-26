
# Bsale Store API REST with Ruby on Rails

API REST with Rails 7 connected to a MySQL database and deployed in Railway.

## API Documentation

You can copy the postman file of the repo and run in your computer. Or see the documentation and run it in Postman.

[API Documentation](https://documenter.getpostman.com/view/9238747/2s8YCbmubM)

## Built with

|                                                    |                                                             |
| :------------------------------------------------- | :---------------------------------------------------------- |
| <img src="https://skillicons.dev/icons?i=rails" /> | [Rails](https://rubyonrails.org/)  - JavaScript environment |
| <img src="https://skillicons.dev/icons?i=mysql" /> | [MySQL](https://mysql.com/) - Relational database           |
|                                                    |

## API Reference

### Get products

```rb
  GET https://crehds-bsale-challenge-production.up.railway.app/products/search--by--names?names=names
```

| Params  | Type     | Description                 |
| :------ | :------- | :-------------------------- |
| `names` | `string` | **Optional** filter by name |

List products. You can use query params to filter them by names

#### Get categories

```rb
  GET https://crehds-bsale-challenge-production.up.railway.app/categories
```

## Run Locally

### PROJECT REQUERIMENTS

**Before start** you may have been installed in your computer :

* Ruby version : 3.1.0

* Rails : 7.0.4

Windows:

* Download Ruby [here](https://rubyinstaller.org/).
* Then install rails with this `gem install rails`

Linux and other:

* Follow this instructions [here](https://phoenixnap.com/kb/install-ruby-ubuntu)

After you ensure have rails and ruby installed in your computer go to your github account and clone the repo.

![github clone](https://docs.github.com/assets/cb-20363/images/help/repository/code-button.png)

Copy the repository URL.

![github ssh](https://docs.github.com/assets/cb-33207/images/help/repository/https-url-clone-cli.png)

Open your terminal and change the current working directory to the location where you want to clone the project.

```bash
  git clone git@github.com:crehds/crehds--bsale--challenge.git
```

Go to the project directory

```bash
  cd crehds--bsale--challenge/
```

Install dependencies

```bash
  bundle install
```

You will need new credentials, so run this command in your terminal:

```rb
  rails credentials:edit
```

This will make a new masterkey and encrypted credentials file.

Start the server

```bash
  rails s
```

Go to the [API documentation](https://documenter.getpostman.com/view/9238747/2s8YCbmubM) to see the other endpoints.
