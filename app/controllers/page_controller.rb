class PageController < ApplicationController
  def profile
    #render :json => params[:status].to_s + " - " + params[:object].to_s
  end
  
  def add_income
    result = Utils::Output.create("Error", nil)
    entity = Entity.search params[:entity]
    unless entity.nil?
      new_income = {
        :user_id => current_user[:id],
        :date => params[:date],
        :amount => params[:amount],
        :concept => params[:concept],
        :entity_id => entity.id,
        :description => params[:description]
      }
      income = Income.create new_income
      if income.valid?
        result = Utils::Output.create("Ok", income[:id])
      else
        result = Utils::Output.create("Error", income.errors)
      end
    end
    render :json => result
  end
  
  def add_expense
    result = Utils::Output.create("Error", nil)
    entity = Entity.search params[:entity]
    unless entity.nil?
      new_expense = {
        :user_id => current_user[:id],
        :entity_id => entity.id,
        :date => params[:date],
        :amount => params[:amount],
        :concept => params[:concept],
        :paymethod => params[:paymethod],
        :type => params[:type]
      }
      expense = Expense.create new_expense
      if expense.valid?
        result = Utils::Output.create("Ok", expense[:id])
      else
        result = Utils::Output.create("Error", expense.errors)
      end
    end
    render :json => result
    
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
