class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show ]
  before_action :authenticate_user!
  # GET /skills or /skills.json
  def index
    @skills = Skill.all
  end

  # GET /skills/1 or /skills/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:name)
    end
end
