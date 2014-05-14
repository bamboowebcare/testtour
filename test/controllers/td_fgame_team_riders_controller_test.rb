require 'test_helper'

class TdFgameTeamRidersControllerTest < ActionController::TestCase
  setup do
    @td_fgame_team_rider = td_fgame_team_riders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:td_fgame_team_riders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create td_fgame_team_rider" do
    assert_difference('TdFgameTeamRider.count') do
      post :create, td_fgame_team_rider: { rider_id: @td_fgame_team_rider.rider_id, tdfgameteam_id: @td_fgame_team_rider.tdfgameteam_id }
    end

    assert_redirected_to td_fgame_team_rider_path(assigns(:td_fgame_team_rider))
  end

  test "should show td_fgame_team_rider" do
    get :show, id: @td_fgame_team_rider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @td_fgame_team_rider
    assert_response :success
  end

  test "should update td_fgame_team_rider" do
    patch :update, id: @td_fgame_team_rider, td_fgame_team_rider: { rider_id: @td_fgame_team_rider.rider_id, tdfgameteam_id: @td_fgame_team_rider.tdfgameteam_id }
    assert_redirected_to td_fgame_team_rider_path(assigns(:td_fgame_team_rider))
  end

  test "should destroy td_fgame_team_rider" do
    assert_difference('TdFgameTeamRider.count', -1) do
      delete :destroy, id: @td_fgame_team_rider
    end

    assert_redirected_to td_fgame_team_riders_path
  end
end
