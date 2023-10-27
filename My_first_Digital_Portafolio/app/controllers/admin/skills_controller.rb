module Admin
    class SkillsController < ApplicationController
        before_action :set_skill, only: %i[ show edit update destroy ]
        before_action :authenticate_user!
        before_action :check_admin_role, only: [:new, :show, :create, :edit, :update, :destroy]
        # GET /skills or /skills.json
        def index
            @skills = Skill.all
        end

        # GET /skills/1 or /skills/1.json
        def show
        end

        # GET /skills/new
        def new
            @skill = Skill.new
            @skill_types = SkillType.all
        end

        # GET /skills/1/edit
        def edit
        end

        # POST /skills or /skills.json
        def create
            # @skill_type = SkillType.find(skill_params[:skill_type_id])
            @skill = Skill.new(skill_params)
            # @skill.skill_type = @skill_type

            respond_to do |format|
            if @skill.save
                format.html { redirect_to skill_url(@skill), notice: "Skill was successfully created." }
                format.json { render :show, status: :created, location: @skill }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @skill.errors, status: :unprocessable_entity }
            end
            end
        end

        # PATCH/PUT /skills/1 or /skills/1.json
        def update
            respond_to do |format|
            if @skill.update(skill_params)
                format.html { redirect_to skill_url(@skill), notice: "Skill was successfully updated." }
                format.json { render :show, status: :ok, location: @skill }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @skill.errors, status: :unprocessable_entity }
            end
            end
        end

        # DELETE /skills/1 or /skills/1.json
        def destroy
            @skill.destroy

            respond_to do |format|
            format.html { redirect_to skills_url, notice: "Skill was successfully destroyed." }
            format.json { head :no_content }
            end
        end

        private

        def check_admin_role
            unless current_user.admin?
                redirect_to root_path, alert: "You do not have permission to access this page."
            end
        end
            # Use callbacks to share common setup or constraints between actions.
            def set_skill
            @skill = Skill.find(params[:id])
            end

            # Only allow a list of trusted parameters through.
            def skill_params
                params.require(:skill).permit(:name, :skill_type_id)
            end
        end

end
