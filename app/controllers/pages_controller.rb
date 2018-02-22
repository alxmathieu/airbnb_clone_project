class PagesController < ApplicationController
  def home
    @users = User.where(is_artist: true)
     # if params[:query]
    @users = @users.search_username_performances(params[:query]) if params[:query]
    #   @users = User.joins(:performances).where("performances.description LIKE ?", params[:query])
    # end


  end
end
