Rails.application.routes.draw do
  resources :links
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':in_url' => 'links#go'
  match "/shortened/*path" => 'links#go_to_shortened', via: [:get]
end
