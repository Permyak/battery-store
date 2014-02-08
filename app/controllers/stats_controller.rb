class StatsController < ApplicationController
  require 'open-uri'
  def new
    #@stat = Stat.new
  end
  def create
    redirect_to action: :show, id: params[:steamid]
    #@stat = Stat.new(stat_params)
    #if @stat.save
    #  redirect_to action: :show, id: @stat.steamId
      # Handle a successful save.
    #else
    #  render 'new'
    #end
  end
  def show
    #@stat = Stat.find_by_steamId(params[:id])
	user_info_parse(params[:steamid])#get info about user with steam id
  end
  
  private

    def stat_params
      params.require(:steamid).permit(:steamid)
    end
	
	def user_info_parse(steamid)
	
	  #source = 'http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid=730&key=EF34E4CB1C7199838183254381203403&format=xml&steamid='+steamid.to_s
      source ='http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=EF34E4CB1C7199838183254381203403&format=xml&steamids='+steamid.to_s
      xmlInfo = Nokogiri::XML(open(source.to_s)).xpath("//players")
	  @info={}	  
	  xmlInfo.children[1].children.each do |node|	    
		@info[node.name]=node.text if !node.text.blank?
	  end
	end
end
