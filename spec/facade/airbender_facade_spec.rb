require 'rails_helper'

RSpec.describe AirbenderFacade do
  describe '#get_nation_members' do
    it 'returns all the members for a given nation' do
      fire_nation_members = AirbenderFacade.get_nation_members("Fire Nation")

      expect(fire_nation_members.length).to eq(97)
      expect(fire_nation_members).to be_all(Member)
    end
  end
end