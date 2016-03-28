Rails.application.routes.draw do
  root to: 'application#status'

  def api_version(version, &routes)
    scope module: "v#{version}", constraints: ApiConstraint.new(version: version), &routes
  end

  namespace :api do
    api_version(1) do
      get '/', action: :index, controller: :base
    end
  end
end
