Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  # API

  namespace :api_v1 do
    post "process" => "feeds#feed_process"
  end

end
