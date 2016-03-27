RSpec.describe ApplicationController, type: :controller do
  it 'responds ok' do
    get :status
    expect(response).to have_http_status(:ok)
  end
end
