require 'rails_helper'

RSpec.describe "bands/show", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :band_name => "Band Name",
      :genre => "Genre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Band Name/)
    expect(rendered).to match(/Genre/)
  end
end
