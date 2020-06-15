Rails.application.routes.draw do
  
    # http verb "url" , to:"controller#action", as:prefix

    get "/home/page", to:"home#index", as:"root"

    get "/ben/new", to:"ben#new", as: "new_ben"

    get "/ali/page", to:"ali#new", as:"new_ali"


    post "/data", to:"home#data", as:"data"

    # get "/blogs/1", to:"blogs#index"
    # get "/blogs/2", to:"blogs#index"
    # get "/blogs/3", to:"blogs#index"

    # dynamic route

    # get "blogs/:id", to:"home#data", as:"blog"
    post "/data/:id/:name", to:"home#data", as:"dynamic_data"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# browser url always makes a get request
# on the front end only forms can make a post requests
# if you don't have front end forms , use postman to test your code