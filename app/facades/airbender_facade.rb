class AirbenderFacade

  def self.get_nation_members(nation)
    members = AirbenderService.get_nation_members(nation)

    members.map do |member|
      Member.new(member)
    end
  end

end