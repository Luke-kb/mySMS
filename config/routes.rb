Mysms::Application.routes.draw do

  root to: "students#index"
  
  get "/students", to: "students#index"

end
