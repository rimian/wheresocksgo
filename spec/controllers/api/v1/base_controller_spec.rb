
RSpec.describe Api::V1::BaseController, type: :controller do
  it 'responds ok' do
    get :index
    expect(response).to have_http_status(:ok)
  end
end
