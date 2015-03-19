require 'rails_helper'

RSpec.describe "bands/edit", type: :view do
  before(:each) do
    @band = assign(:band, Band.create!(
      :band_name => "MyString",
      :genre => "MyString"
    ))
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(@band), "post" do

      assert_select "input#band_band_name[name=?]", "band[band_name]"

      assert_select "input#band_genre[name=?]", "band[genre]"
    end
  end
end
