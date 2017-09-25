Rails.application.routes.draw do
  resource :expense_reports, only: [ :update ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
