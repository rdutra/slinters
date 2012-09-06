class AuthorizationController < ApplicationController
  #before_filter :authenticate_user!
  def login
    valid = false
    status = ""
    object = ""
    if !user_signed_in?
      user = User.find_by_email(params[:email])
      unless user.nil?
        valid = user.valid_password?(params[:password])
        if valid
          sign_in(:user, user)
        end
      end
      status = "ok"
      object = valid
    else
      status = "warning"
      object = "The user is signed in"
    end
    redirect_to url_for :controller => "page", :action => "profile", :status => status, :object => object
    #render :json => Utils::Output.create(status,object)
  end
  
  def register 
    user = User.new
    user.fname = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation =params[:password_confirmation]
    user.save!
    user.confirm!
    redirect_to url_for :controller => "page", :action => "profile"
    #render :json => user
  end
end


#$.ajax({
#  type: "POST",
#  url: "/login",
#  data: {email: "juaneluruguayo@gmail.com", password: "dinamita"}
#}).done(function( msg ) {
#  alert( "Data Saved: " + msg );
#});

#$.ajax({
#  type: "POST",
#  url: "/register",
#  data: {name : "Juan",email: "juaneluruguayo@gmail.com", password: "dinamita", password_confirmation: "dinamita"}
#}).done(function( msg ) {
#  alert( "Data Saved: " + msg );
#});