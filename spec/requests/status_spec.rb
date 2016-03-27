
describe 'status', type: :request do
  it 'responds with :ok' do
    get '/'
    expect(response).to have_http_status(:ok)
  end
end
