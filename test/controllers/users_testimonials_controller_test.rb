require 'test_helper'

class UsersTestimonialsControllerTest < ActionController::TestCase
  setup do
    @users_testimonial = users_testimonials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_testimonials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_testimonial" do
    assert_difference('UsersTestimonial.count') do
      post :create, users_testimonial: { name: @users_testimonial.name, testimonial: @users_testimonial.testimonial }
    end

    assert_redirected_to users_testimonial_path(assigns(:users_testimonial))
  end

  test "should show users_testimonial" do
    get :show, id: @users_testimonial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_testimonial
    assert_response :success
  end

  test "should update users_testimonial" do
    patch :update, id: @users_testimonial, users_testimonial: { name: @users_testimonial.name, testimonial: @users_testimonial.testimonial }
    assert_redirected_to users_testimonial_path(assigns(:users_testimonial))
  end

  test "should destroy users_testimonial" do
    assert_difference('UsersTestimonial.count', -1) do
      delete :destroy, id: @users_testimonial
    end

    assert_redirected_to users_testimonials_path
  end
end
