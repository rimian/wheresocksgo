class API::V1::SocksController < ApplicationController
  def index
    socks = [
      {
        id: 'de305d54-75b4-431b-adb2-eb6b9e546014',
        title: 'the sock'
      }
    ]

    render json: socks, status: :ok
  end
end
