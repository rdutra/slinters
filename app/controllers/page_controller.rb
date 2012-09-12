class PageController < ApplicationController
  def profile
    #render :json => params[:status].to_s + " - " + params[:object].to_s
  end
  
  def add_income
    entity = Entity.search params[:entity]
    new_income = {
      :user_id => current_user[:id],
      :date => params[:date],
      :amount => params[:amount],
      :concept => params[:concept],
      :entity => entity.id,
      :description => params[:description]
    }
    
    income = Income.create new_income
    render :json => Utils::Output.create("OK", income)
  end
  
  def add_expense
    
  end
  
  def edit_income
    
  end
  
  def edit_expense
    
  end
  
  def delete_income
    
  end
  
  def delete_expense
    
  end
end
