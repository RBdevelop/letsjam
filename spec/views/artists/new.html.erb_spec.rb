require 'rails_helper'

RSpec.describe "artists/new", type: :view do
  before(:each) do
    assign(:artist, Artist.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :genre => "MyString",
      :instrument => "MyString",
      :location => "MyString",
      :stage_name => "MyString"
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_first_name[name=?]", "artist[first_name]"

      assert_select "input#artist_last_name[name=?]", "artist[last_name]"

      assert_select "input#artist_genre[name=?]", "artist[genre]"

      assert_select "input#artist_instrument[name=?]", "artist[instrument]"

      assert_select "input#artist_location[name=?]", "artist[location]"

      assert_select "input#artist_stage_name[name=?]", "artist[stage_name]"
    end
  end
end
