
RSpec.describe ApiConstraint do
  it 'accepts the version' do
    request = double(:request, headers: { accept: 'application/vnd.wheresocksgo+json; version=1' })
    expect(described_class.new(version: 1).matches?(request)).to eq true
  end

  it 'rejects without version' do
    request = double(:request, headers: { accept: 'something else' })
    expect(described_class.new(version: 1).matches?(request)).to eq false
  end
end
