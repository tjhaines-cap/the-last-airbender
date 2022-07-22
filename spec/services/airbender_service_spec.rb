require 'rails_helper'

RSpec.describe AirbenderService do
  describe "#get_nation_members" do
    it "returns a list of all members of a given nation" do
      members = AirbenderService.get_nation_members("Fire Nation")

      expect(members).to be_a(Array)
      expect(members.length).to eq(97)

      member = members.first
      expect(member).to have_key(:allies)
      expect(member).to have_key(:enemies)
      expect(member).to have_key(:affiliation)
      expect(member).to have_key(:name)
    end
  end
end