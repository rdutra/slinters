class PageController < ApplicationController
  def profile
    render :json => params[:status].to_s + " - " + params[:object].to_s
  end
end
