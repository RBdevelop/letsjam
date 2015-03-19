require 'rails_helper'

RSpec.describe "bands/index", type: :view do
  before(:each) do
    assign(:bands, [
      Band.create!(
        :band_name => "Band Name",
        :genre => "Genre"
      ),
      Band.create!(
        :band_name => "Band Name",
        :genre => "Genre"
      )
    ])
  end

  it "renders a list of bands" do
    render
    assert_select "tr>td", :text => "Band Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
  end
end
