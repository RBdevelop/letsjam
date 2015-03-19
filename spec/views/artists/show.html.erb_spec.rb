require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :genre => "Genre",
      :instrument => "Instrument",
      :location => "Location",
      :stage_name => "Stage Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Instrument/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Stage Name/)
  end
end
