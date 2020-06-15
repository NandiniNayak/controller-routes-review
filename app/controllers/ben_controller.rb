class BenController < ApplicationController
    def new
        # render plain: "ben's page working"
        puts "ben page working"
        # redirect back to home page 
        # redirect always goes through the route file
        # redirect_to "/landing/page"
        # never ever hardcode the route

        redirect_to root_path
    end
end