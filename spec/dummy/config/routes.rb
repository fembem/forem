Rails.application.routes.draw do

  mount Forem::Engine => "/forem"

  match "/sign_in", :to => "fake#sign_in", :as => "sign_in"
  match "/signed_in", :to => "fake#signed_in", :as => "signed_in"

end
