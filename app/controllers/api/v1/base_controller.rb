module Api
  module V1
    class BaseController < ApplicationController
      def index
        head status: :ok
      end
    end
  end
end
