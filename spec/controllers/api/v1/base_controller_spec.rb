
RSpec.describe Api::V1::BaseController, type: :controller do
  it 'responds ok' do
    get :index, {}, HTTP_ACCEPT: 'application/vnd.wheresocksgo+json; version=1'
    expect(response).to have_http_status(:ok)
  end
end
