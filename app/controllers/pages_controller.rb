class PagesController < ApplicationController
  def home
    @users = User.where(is_artist: true)
  end

end
