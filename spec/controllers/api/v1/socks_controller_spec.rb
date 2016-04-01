
RSpec.describe Api::V1::SocksController, type: :controller do
  include Committee::Test::Methods
  let(:schema_path) { "#{Rails.root}/docs/schema/schema.json" }
  let(:last_response) { response }
  let(:last_request) { request }

  it 'responds ok' do
    get :index, {}, HTTP_ACCEPT: 'application/vnd.wheresocksgo+json; version=1'
    expect(response).to have_http_status(:ok)
  end

  it 'conforms to the schema' do
    get :index, {}, HTTP_ACCEPT: 'application/vnd.wheresocksgo+json; version=1'
    assert_schema_conform
  end
end
