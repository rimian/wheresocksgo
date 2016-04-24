class API::V1::SocksController < ApplicationController
  def index
    render json: Sock.all, status: :ok, root: false
  end
end
