# controller file
# few inbuilt methods : can be inherited from a parent class called Application controller
class HomeController < ApplicationController
    # which method should be executed is been stated in the routes file
    # perform a before action only for data method
    before_action :authenticate_data, only:[:data]
    def page
        # render: return to the browser
        render plain:"working"
    end

    def index
        render plain: "index working"
    end

    def data
        puts "observe the params data ----"
        p params
        render plain: params
    end

    def authenticate_data
        # permit only tells what params (body params) are allowed on the server side
        params.require(:home).permit(:name,:bio)
    end
end