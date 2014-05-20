require 'test_helper'

class TourTeamsControllerTest < ActionController::TestCase
  setup do
    @tour_team = tour_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_team" do
    assert_difference('TourTeam.count') do
      post :create, tour_team: { name: @tour_team.name, poule_id: @tour_team.poule_id, user_id: @tour_team.user_id }
    end

    assert_redirected_to tour_team_path(assigns(:tour_team))
  end

  test "should show tour_team" do
    get :show, id: @tour_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_team
    assert_response :success
  end

  test "should update tour_team" do
    patch :update, id: @tour_team, tour_team: { name: @tour_team.name, poule_id: @tour_team.poule_id, user_id: @tour_team.user_id }
    assert_redirected_to tour_team_path(assigns(:tour_team))
  end

  test "should destroy tour_team" do
    assert_difference('TourTeam.count', -1) do
      delete :destroy, id: @tour_team
    end

    assert_redirected_to tour_teams_path
  end
end
