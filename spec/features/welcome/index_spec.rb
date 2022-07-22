require 'rails_helper'

RSpec.describe "welcome index page" do

  it "redirects to search page with nation members when a nation is selected" do
    visit '/'

    select "Fire Nation", from: :nation 
    click_button("Search For Members")

    expect(current_path).to eq('/search')
  end
end