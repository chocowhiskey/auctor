class CharactersController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @characters = @project.characters
  end

  def new
    @project = Project.find(params[:project_id]) # how to know if just id or project_id? look in the routes!
    @character = Character.new
  end

  def create
    @project = Project.find(params[:project_id])
    @character = Character.new(character_params)
    @character.project = @project
    @character.save!
    redirect_to project_characters_path
  end

  private

  def character_params
    params.require(:character).permit!
  end
end
