class InfosController < ApplicationController
  def redirect
	redirect_to "/info/"+params[:searchString]
  end
  def show
    searchInDB(params[:searchline])
  end
  
  private
	
	def searchInDB(searchString)	
	  @info={}
	  @info["result"]=Battery.find_by code: searchString
	end
end
