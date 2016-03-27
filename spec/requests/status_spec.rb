
describe 'status', type: :request do
  it 'responds with :ok' do
    get '/'
    expect(response.status).to eq 200
  end
end
