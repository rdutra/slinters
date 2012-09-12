class EntityController < ApplicationController
  
  def search_entity
    searchstring =  ActionController::Base.helpers.sanitize(params[:searchstring])
    searchstring = searchstring.gsub(/\\|'/) { |c| "\\#{c}" }
    @results = ""
    response = []
    unless searchstring.nil?
      @results = Entity.search_autocomplete searchstring
      @results.each do |entity|
        response.push({:label => entity[:name]})
      end
    end
    render :text => response.to_json
  end
    
end
