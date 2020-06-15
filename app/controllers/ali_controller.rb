class AliController < ApplicationController
    def new

        # you cannot use both render and redirect_to together
        # render plain: "ali's page working"
        puts "i am in ali's new method -------------"
        redirect_to new_ben_path
    end
end