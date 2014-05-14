require 'test_helper'

class TdFgameTeamsControllerTest < ActionController::TestCase
  setup do
    @td_fgame_team = td_fgame_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:td_fgame_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create td_fgame_team" do
    assert_difference('TdFgameTeam.count') do
      post :create, td_fgame_team: { name: @td_fgame_team.name, user_id: @td_fgame_team.user_id }
    end

    assert_redirected_to td_fgame_team_path(assigns(:td_fgame_team))
  end

  test "should show td_fgame_team" do
    get :show, id: @td_fgame_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @td_fgame_team
    assert_response :success
  end

  test "should update td_fgame_team" do
    patch :update, id: @td_fgame_team, td_fgame_team: { name: @td_fgame_team.name, user_id: @td_fgame_team.user_id }
    assert_redirected_to td_fgame_team_path(assigns(:td_fgame_team))
  end

  test "should destroy td_fgame_team" do
    assert_difference('TdFgameTeam.count', -1) do
      delete :destroy, id: @td_fgame_team
    end

    assert_redirected_to td_fgame_teams_path
  end
end
