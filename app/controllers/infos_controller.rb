class InfosController < ApplicationController
  def redirect
	redirect_to "/info/"+params[:searchString]
  end
  def show
    
    searchInDB(params[:searchString])#get info about user with steam id
  end
  
  private
	
	def searchInDB(searchString)	
	  @info=searchString
	end
end
