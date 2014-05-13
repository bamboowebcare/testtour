require 'test_helper'

class CyclingTeamsControllerTest < ActionController::TestCase
  setup do
    @cycling_team = cycling_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cycling_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cycling_team" do
    assert_difference('CyclingTeam.count') do
      post :create, cycling_team: { description: @cycling_team.description, logo: @cycling_team.logo, name: @cycling_team.name, tdf: @cycling_team.tdf }
    end

    assert_redirected_to cycling_team_path(assigns(:cycling_team))
  end

  test "should show cycling_team" do
    get :show, id: @cycling_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cycling_team
    assert_response :success
  end

  test "should update cycling_team" do
    patch :update, id: @cycling_team, cycling_team: { description: @cycling_team.description, logo: @cycling_team.logo, name: @cycling_team.name, tdf: @cycling_team.tdf }
    assert_redirected_to cycling_team_path(assigns(:cycling_team))
  end

  test "should destroy cycling_team" do
    assert_difference('CyclingTeam.count', -1) do
      delete :destroy, id: @cycling_team
    end

    assert_redirected_to cycling_teams_path
  end
end
