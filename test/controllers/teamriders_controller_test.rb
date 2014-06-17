require 'test_helper'

class TeamridersControllerTest < ActionController::TestCase
  setup do
    @teamrider = teamriders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamriders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamrider" do
    assert_difference('Teamrider.count') do
      post :create, teamrider: { rider_id: @teamrider.rider_id, team_id: @teamrider.team_id }
    end

    assert_redirected_to teamrider_path(assigns(:teamrider))
  end

  test "should show teamrider" do
    get :show, id: @teamrider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamrider
    assert_response :success
  end

  test "should update teamrider" do
    patch :update, id: @teamrider, teamrider: { rider_id: @teamrider.rider_id, team_id: @teamrider.team_id }
    assert_redirected_to teamrider_path(assigns(:teamrider))
  end

  test "should destroy teamrider" do
    assert_difference('Teamrider.count', -1) do
      delete :destroy, id: @teamrider
    end

    assert_redirected_to teamriders_path
  end
end
