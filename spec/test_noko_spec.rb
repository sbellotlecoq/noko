require_relative '../lib/test_noko'

describe "open_nokogiri" do
  it "must return something which is not nil" do
    expect(open_nokogiri).not_to be(nil)
  end

  it "must return an hash of array with all crypto" do
    page = open_nokogiri
    expect(crypto(page).length).not_to be(0)
  end
end

    