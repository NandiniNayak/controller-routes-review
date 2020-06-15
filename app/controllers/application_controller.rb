class ApplicationController < ActionController::Base

    # unless you use forms you will have this code here ( to prevent authentication)
    # note : never have this code for a production site
    skip_before_action :verify_authenticity_token
end
