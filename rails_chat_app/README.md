# rails6_docker_template

**thanks to this article: https://qiita.com/me-654393/items/ac6f61f3eee66380ecd7**

## how to use

you should be able to use Docker CLI.

### 1. click "Use this template"

you can create your own repositry with this template.

### 2. set up in your local machine

how to setup.

```
bash init.sh
```

only this.

## what you can use

- rails6
- PostgreSQL

## deploy

you can deploy this app to heroku without no preparation.  
(of course, you should to be able to use heroku CLI)

only this.

```
docker-compose run web bundle install
heroku login --interactive
heroku create
git push heroku master
```
