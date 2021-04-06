Mysms::Application.routes.draw do
  
  resources :students do
    resources :notes, module: :students
  end
  
  resources :courses
  resources :institutes
  
  root to: "students#index"
end
