require 'test_helper'

class TourTeamsRidersControllerTest < ActionController::TestCase
  setup do
    @tour_teams_rider = tour_teams_riders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_teams_riders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_teams_rider" do
    assert_difference('TourTeamsRider.count') do
      post :create, tour_teams_rider: { rider_id: @tour_teams_rider.rider_id, tour_team_id: @tour_teams_rider.tour_team_id }
    end

    assert_redirected_to tour_teams_rider_path(assigns(:tour_teams_rider))
  end

  test "should show tour_teams_rider" do
    get :show, id: @tour_teams_rider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_teams_rider
    assert_response :success
  end

  test "should update tour_teams_rider" do
    patch :update, id: @tour_teams_rider, tour_teams_rider: { rider_id: @tour_teams_rider.rider_id, tour_team_id: @tour_teams_rider.tour_team_id }
    assert_redirected_to tour_teams_rider_path(assigns(:tour_teams_rider))
  end

  test "should destroy tour_teams_rider" do
    assert_difference('TourTeamsRider.count', -1) do
      delete :destroy, id: @tour_teams_rider
    end

    assert_redirected_to tour_teams_riders_path
  end
end
