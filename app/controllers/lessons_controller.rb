class LessonsController < ApplicationController
  before_action :authenticate_merchant!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]

  # GET /lessons
  # GET /lessons.json
  def index
    @search = Lesson.ransack(params[:q])
    @search.sorts = 'created_at DESC' if @search.sorts.empty?
    @lessons = @search.result.where(draft: false)
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @current_merchant = current_merchant
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = current_merchant.lessons.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
    @lesson.lesson_type_ids = params[:lesson][:lesson_type_ids]
    @lesson.class_type_ids = params[:lesson][:class_type_ids]
    @lesson.culinary_skill_ids = params[:lesson][:culinary_skill_ids]
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
    @lesson.lesson_type_ids = params[:lesson][:lesson_type_ids]
    @lesson.class_type_ids = params[:lesson][:class_type_ids]
    @lesson.culinary_skill_ids = params[:lesson][:culinary_skill_ids]
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_multiple
  @lessons = Lesson.friendly.find(params[:lesson_ids])
  end

  def update_multiple
  @lessons = Lesson.friendly.update(params[:lessons].keys, params[:lessons].values)
  @lessons.reject! { |p| p.errors.empty? }
  if @lessons.empty?
    redirect_to pages_lessons_path
  else
    render "edit_multiple"
  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
       @lesson = Lesson.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:brand_name, :general_contact_number, :general_email, :preferred_contact, :preferred_sign_up_method, :facebook, :instagram, :website, :question_1, :question_2, :question_3, :question_4, :delivery_link, :delivery_terms, :draft, :expiry_date, :friends_rewards_terms, :verified, :logo, :featured_image, :image, :image_2, :image_3, :image_4, :document_1, :document_2, :document_3, :document_4, :region_id, :location_id, :friends_reward_id, lesson_type_ids: [], class_type_ids: [], culinary_skill_ids: [])
    end
end
