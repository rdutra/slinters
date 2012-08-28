class ServiceController < ApplicationController
  def index
    
  end
  
  def create
    omniauth = request.env["omniauth.auth"]
    if omniauth
      omniauth['extra']['raw_info']['email'] ? email = omniauth['extra']['raw_info']['email'] : email = ''
      omniauth['extra']['raw_info']['name'] ? name = omniauth['extra']['raw_info']['email'] : email = ''
      omniauth['extra']['raw_info']['id'] ? uid = omniauth['extra']['raw_info']['email'] : email = ''
    end
    render :text => request.env["omniauth.auth"].to_json
  end
end
