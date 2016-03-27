Rails.application.routes.draw do
  root to: 'application#status'

  namespace :api do
    namespace :v1 do
      get '/', action: :index, controller: :base
    end
  end
end
