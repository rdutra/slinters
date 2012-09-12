class PageController < ApplicationController
  def profile
    #render :json => params[:status].to_s + " - " + params[:object].to_s
  end
  
  def add_income
    result = Utils::Output.create("Error", nil)
    unless params[:entity].nil?
      entity = Entity.search params[:entity]
      new_income = {
        :user_id => current_user[:id],
        :date => params[:date],
        :amount => params[:amount],
        :concept => params[:concept],
        :entity_id => entity.id,
        :description => params[:description]
      }
      income = Income.create new_income
      result = Utils::Output.create("Ok", income[:id])
    end
    render :json => result
  end
  
  def add_expense
    expense = Expense
    
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
