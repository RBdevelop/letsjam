require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :genre => "Genre",
        :instrument => "Instrument",
        :location => "Location",
        :stage_name => "Stage Name"
      ),
      Artist.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :genre => "Genre",
        :instrument => "Instrument",
        :location => "Location",
        :stage_name => "Stage Name"
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Instrument".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Stage Name".to_s, :count => 2
  end
end
