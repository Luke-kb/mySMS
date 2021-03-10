Mysms::Application.routes.draw do

  root to: "home#index"

  get "/students", to: "students#index"

end
