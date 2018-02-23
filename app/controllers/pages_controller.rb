class PagesController < ApplicationController
  def home
    @users = User.where(is_artist: true)
    if params[:query] && params[:query] != ''
      @users = @users.search_username_performances(params[:query])
    end
    # raise

    #   @users = User.joins(:performances).where("performances.description LIKE ?", params[:query])
    # end




  end
end
