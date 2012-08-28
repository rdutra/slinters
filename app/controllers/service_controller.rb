class ServiceController < ApplicationController
  def index
    
  end
  
  def create
    render :text => request.env["omniauth.auth"].to_json
  end
end
