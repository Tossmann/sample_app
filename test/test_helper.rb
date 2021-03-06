require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
    fixtures :all

    def is_logged_in?
      !session[:user_id].nil?
    end
    
    include ApplicationHelper
end
