class UsersTestimonialsController < ApplicationController
  before_action :set_users_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /users_testimonials
  # GET /users_testimonials.json
  def index
    @users_testimonials = UsersTestimonial.all
  end

  # GET /users_testimonials/1
  # GET /users_testimonials/1.json
  def show
  end

  # GET /users_testimonials/new
  def new
    @users_testimonial = UsersTestimonial.new
  end

  # GET /users_testimonials/1/edit
  def edit
  end

  # POST /users_testimonials
  # POST /users_testimonials.json
  def create
    @users_testimonial = UsersTestimonial.new(users_testimonial_params)

    respond_to do |format|
      if @users_testimonial.save
        format.html { redirect_to @users_testimonial, notice: 'Users testimonial was successfully created.' }
        format.json { render :show, status: :created, location: @users_testimonial }
      else
        format.html { render :new }
        format.json { render json: @users_testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_testimonials/1
  # PATCH/PUT /users_testimonials/1.json
  def update
    respond_to do |format|
      if @users_testimonial.update(users_testimonial_params)
        format.html { redirect_to @users_testimonial, notice: 'Users testimonial was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_testimonial }
      else
        format.html { render :edit }
        format.json { render json: @users_testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_testimonials/1
  # DELETE /users_testimonials/1.json
  def destroy
    @users_testimonial.destroy
    respond_to do |format|
      format.html { redirect_to users_testimonials_url, notice: 'Users testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_testimonial
      @users_testimonial = UsersTestimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_testimonial_params
      params.require(:users_testimonial).permit(:name, :testimonial)
    end
end
