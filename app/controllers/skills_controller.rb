class SkillsController < ApplicationController

  before_action :set_developpeur, only: [:new, :create]

  def new
    @skills = Skill.new
  end

  def create
    @skills = Skill.new(skills_params)
    @skills.developpeur = @developpeur
    if @skills.save
      redirect_to developpeur_path(params[:developpeur_id])
    else
      render :new
    end
  end

  def skills_params
    params.require(:skills).permit(:level, :language_id)
  end

  def set_developpeur
    @developpeur = Developpeur.find(params[:developpeur_id])
  end
end
