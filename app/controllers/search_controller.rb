class SearchController < ApplicationController

  def index
    @members = AirbenderFacade.get_nation_members(params['nation'])
    @nation = params['nation']
  end
end