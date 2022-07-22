require 'rails_helper' 

RSpec.describe "search index page" do

  it 'displays the total number of members in the nation and details for the first 25 material' do
    visit '/'

    select "Fire Nation", from: :nation 
    click_button("Search For Members")

    expect(current_path).to eq('/search')
save_and_open_page
    expect(page).to have_content("97 members in the Fire Nation")
    within '#member-0' do
      expect(page).to have_content("Name: Chan (Fire Nation admiral)")
    end
    within '#member-24' do
      expect(page).to have_content("Name: Fire Nation train conductor")
    end
  end

end