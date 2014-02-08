class InfosController < ApplicationController
  def redirect
	#get steam64id
    steam64id=get_steam64id(params[:steamid])
	redirect_to "/info/"+steam64id
  end
  def show
    
    user_info_parse(params[:steamid])#get info about user with steam id
  end
  
  private
	
	def get_steam64id(key)
	#determine steam64 by steamID, steamid32, steamid64, URL, login
	  source ='http://steamidfinder.ru/'+key.to_s
	  doc = Nokogiri::HTML(open(source.to_s)).css('input')[4]['value']
	end
	def user_info_parse(steamid)	
	  #source = 'http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid=730&key=EF34E4CB1C7199838183254381203403&format=xml&steamid='+steamid.to_s
      #source for user stat
	  source ='http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=EF34E4CB1C7199838183254381203403&format=xml&steamids='+steamid.to_s
      #load page
	  xmlinfo = Nokogiri::XML(open(source.to_s)).xpath("//players")
	  #returning hash
	  @info={}	  
	  if (!xmlinfo.nil? &&xmlinfo.children.count>0)
	    #page load
	    xmlinfo.children[1].children.each do |node|	    
		  @info[node.name]=node.text if !node.text.blank?
	    end
	  end
	end
end
