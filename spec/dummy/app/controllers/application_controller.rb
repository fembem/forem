class ApplicationController < ActionController::Base
  protect_from_forgery

  def method_in_main_app
    #puts "in main app!"
  end

end
