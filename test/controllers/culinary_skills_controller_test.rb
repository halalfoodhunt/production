require 'test_helper'

class CulinarySkillsControllerTest < ActionController::TestCase
  setup do
    @culinary_skill = culinary_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:culinary_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create culinary_skill" do
    assert_difference('CulinarySkill.count') do
      post :create, culinary_skill: { name: @culinary_skill.name }
    end

    assert_redirected_to culinary_skill_path(assigns(:culinary_skill))
  end

  test "should show culinary_skill" do
    get :show, id: @culinary_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @culinary_skill
    assert_response :success
  end

  test "should update culinary_skill" do
    patch :update, id: @culinary_skill, culinary_skill: { name: @culinary_skill.name }
    assert_redirected_to culinary_skill_path(assigns(:culinary_skill))
  end

  test "should destroy culinary_skill" do
    assert_difference('CulinarySkill.count', -1) do
      delete :destroy, id: @culinary_skill
    end

    assert_redirected_to culinary_skills_path
  end
end
