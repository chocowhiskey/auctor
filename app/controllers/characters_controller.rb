class CharactersController < ApplicationController
  def new
    @project = Project.find(params[:project_id]) # how to know if just id or project_id? look in the routes!
    @character = Character.new
  end
end
