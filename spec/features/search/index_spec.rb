require 'rails_helper' 

RSpec.describe "search index page" do

  it 'displays the total number of members in the nation and details for the first 25 material' do
    data = JSON.parse(File.read("./spec/fixtures/fire_nation_members.json"), symbolize_names: true)
    members = data.map { |member_data| Member.new(member_data) }
    
    visit '/'

    select "Fire Nation", from: :nation 
    click_button("Search For Members")

    expect(current_path).to eq('/search')
    
    expect(page).to have_content("97 members in the Fire Nation")
    within '#member-0' do
      expect(page).to have_content("Name: #{members[0].name}")
      expect(page).to have_content("Allies: #{members[0].allies.join(', ')}")
      expect(page).to have_content("Enemies: #{members[0].enemies.join(', ')}")
    end
    within '#member-24' do
      expect(page).to have_content("Name: #{members[24].name}")
      expect(page).to have_content("Allies: #{members[24].allies.join(', ')}")
      expect(page).to have_content("Enemies: #{members[24].enemies.join(', ')}")
    end

    expect(page).to_not have_content("Name: #{members[25].name}")
  end

end