MusicApp::Application.routes.draw do
  resources :bands do
    resource :albums do
      resource :tracks
    end
    resources :albums, :except => [:new]
  end

match "/albums/index" => "albums#index_custom", via: :get
end
