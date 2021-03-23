Mysms::Application.routes.draw do
  
  root to: "students#index"
  
  resources :students
  resources :courses
  resources :institutes

end
