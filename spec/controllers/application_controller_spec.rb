RSpec.describe ApplicationController, type: :controller do
  it 'responds ok' do
    get :status
    expect(response).to have_http_status(:ok)
  end

  it 'has no cache' do
    expect(controller).to receive(:expires_now).once
    get :status
  end
end
