Rails.application.routes.draw do
  root to: 'application#status'

  namespace :api do
    scope module: 'v1', constraints: ApiConstraint.new(version: 1) do
      get '/', action: :index, controller: :base
    end
  end
end
