class Api::V1::SocksController < ApplicationController
  def index
    socks = [

    ]

    render json: socks, status: :ok
  end
end
