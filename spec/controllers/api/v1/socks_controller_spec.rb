
RSpec.describe API::V1::SocksController, type: :controller do
  include Committee::Test::Methods
  let(:schema_path) { "#{Rails.root}/docs/schema/schema.json" }
  let(:last_response) { response }
  let(:last_request) { request }

  before do
    create(:sock)
    get :index, {}, HTTP_ACCEPT: 'application/vnd.wheresocksgo+json; version=1'
  end

  it 'responds ok' do
    expect(response).to have_http_status(:ok)
  end

  it 'conforms to the schema' do
    assert_schema_conform
  end

  it 'has the JSON media type' do
    expect(response.content_type).to eq Mime::JSON
  end
end
