require 'test_helper'

class WeeklyStatsControllerTest < ActionController::TestCase
  setup do
    @weekly_stat = weekly_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekly_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekly_stat" do
    assert_difference('WeeklyStat.count') do
      post :create, weekly_stat: {  }
    end

    assert_redirected_to weekly_stat_path(assigns(:weekly_stat))
  end

  test "should show weekly_stat" do
    get :show, id: @weekly_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekly_stat
    assert_response :success
  end

  test "should update weekly_stat" do
    patch :update, id: @weekly_stat, weekly_stat: {  }
    assert_redirected_to weekly_stat_path(assigns(:weekly_stat))
  end

  test "should destroy weekly_stat" do
    assert_difference('WeeklyStat.count', -1) do
      delete :destroy, id: @weekly_stat
    end

    assert_redirected_to weekly_stats_path
  end
end
