class ApplicationController < ActionController::Base
  protect_from_forgery
  include ActiveDevice
  skip_before_filter :set_mobile_format #we're skipping the :mobile request
  
  def index
    if is_mobile_device?
     case device_model
     when "iPhone"
       render :layout => "application"
       #render :layout => "application_iphone"
     when "iPad"
       render :layout => "application"
       #render :layout => "application_ipad"
     when "android" 
       render :layout => "application"
       #render :layout => "application_android"
     else
       render :layout => "application"
       #render :layout => "application_other"
     end
   else
     render :layout => "application_login", :action =>"index"
     #render :layout => "application"
   end
  end
  
  def register
    render :layout => "application_login"
  end
end
