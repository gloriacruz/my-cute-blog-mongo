# README

## Welcome to My Cute Blog

My Cute Blog Mongo project was written in 2018. The main purpose was to recreate a simple blog using a NoSQL database with Rails.

This project was created using a Rails generator:

    $ rails new my-cute-blog-mongo --skip-active-record

## Core Stories:

1. As a blog user, I want to see a list of all the articles
2. As a blog user, I want to add new articles
3. As a blog user, I want to read an article and see all of its comments
4. As a blog user, I want to edit my article
5. As a blog user, I want to permanently delete my article
6. As a blog user, I want to add comments to an article
7. As a blog user, I want to delete comments from an article

## System dependencies

* Ruby 2.4.1

* Rails 5.1.3

* MongoDB 3.6.2 ([setup instructions for macOS](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/))

## Configuration

    $ git clone https://github.com/gloriacruz/my-cute-blog-mongo.git

    $ cd my-cute-blog-mongo

    $ bundle install

    $ rails server

## Database

The website uses a NoSQL database

* MongoDB 3.6.2

To manually start the server with default data directory

    $ mongod

### Database creation

    $ rails db:create

### Database initialization

    $ rails db:migrate

## Routes

    $ rails routes

Output:

              Prefix Verb   URI Pattern                                       Controller#Action
           welcome_index GET    /welcome/index(.:format)                          welcome#index
        article_comments GET    /articles/:article_id/comments(.:format)          comments#index
                         POST   /articles/:article_id/comments(.:format)          comments#create
     new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
    edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
         article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
                         PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
                         PUT    /articles/:article_id/comments/:id(.:format)      comments#update
                         DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
                articles GET    /articles(.:format)                               articles#index
                         POST   /articles(.:format)                               articles#create
             new_article GET    /articles/new(.:format)                           articles#new
            edit_article GET    /articles/:id/edit(.:format)                      articles#edit
                 article GET    /articles/:id(.:format)                           articles#show
                         PATCH  /articles/:id(.:format)                           articles#update
                         PUT    /articles/:id(.:format)                           articles#update
                         DELETE /articles/:id(.:format)                           articles#destroy
                    root GET    /                                                 welcome#index

## Deployment

After starting the server, navigate to http://localhost:3000

## Contributing

If you would like to contribute to My Cute Blog! Please email me [ally.cruz@gmail.com](mailto:ally.cruz@gmail.com).

## License

My Cute Blog is released under the [MIT License](https://opensource.org/licenses/MIT).
