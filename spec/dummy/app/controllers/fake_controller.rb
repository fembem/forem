class FakeController < ApplicationController
  def sign_in
    render :text => "Placeholder login page."
  end

  def signed_in
    session['user'] = User.find_or_create_by_login("forem_user").login
    render :text => "You are now signed in as #{session['user']}."
  end
end
