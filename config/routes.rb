MusicApp::Application.routes.draw do
  resources :bands
  resources :albums
  resources :tracks
  resources :notes



  # match "/albums/index" => "albums#index_custom", via: :get
end
