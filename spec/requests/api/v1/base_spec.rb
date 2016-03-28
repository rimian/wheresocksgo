
describe 'index', type: :request do
  it 'responds with :ok' do
    get '/api'
    expect(response).to have_http_status(:ok)
  end
end
