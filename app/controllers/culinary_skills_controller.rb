class CulinarySkillsController < ApplicationController
  before_action :set_culinary_skill, only: [:show, :edit, :update, :destroy]

  # GET /culinary_skills
  # GET /culinary_skills.json
  def index
    @culinary_skills = CulinarySkill.all
  end

  # GET /culinary_skills/1
  # GET /culinary_skills/1.json
  def show
  end

  # GET /culinary_skills/new
  def new
    @culinary_skill = CulinarySkill.new
  end

  # GET /culinary_skills/1/edit
  def edit
  end

  # POST /culinary_skills
  # POST /culinary_skills.json
  def create
    @culinary_skill = CulinarySkill.new(culinary_skill_params)

    respond_to do |format|
      if @culinary_skill.save
        format.html { redirect_to @culinary_skill, notice: 'Culinary skill was successfully created.' }
        format.json { render :show, status: :created, location: @culinary_skill }
      else
        format.html { render :new }
        format.json { render json: @culinary_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /culinary_skills/1
  # PATCH/PUT /culinary_skills/1.json
  def update
    respond_to do |format|
      if @culinary_skill.update(culinary_skill_params)
        format.html { redirect_to @culinary_skill, notice: 'Culinary skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @culinary_skill }
      else
        format.html { render :edit }
        format.json { render json: @culinary_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culinary_skills/1
  # DELETE /culinary_skills/1.json
  def destroy
    @culinary_skill.destroy
    respond_to do |format|
      format.html { redirect_to culinary_skills_url, notice: 'Culinary skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culinary_skill
      @culinary_skill = CulinarySkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culinary_skill_params
      params.require(:culinary_skill).permit(:name,:icon)
    end
end
