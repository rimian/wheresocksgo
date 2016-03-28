
describe 'index', type: :request do
  it 'responds with :ok' do
    get '/api', {}, HTTP_ACCEPT: 'application/vnd.wheresocksgo+json; version=1'
    expect(response).to have_http_status(:ok)
  end
end
