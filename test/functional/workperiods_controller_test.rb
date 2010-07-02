require 'test_helper'

class WorkperiodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workperiods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workperiod" do
    assert_difference('Workperiod.count') do
      post :create, :workperiod => { }
    end

    assert_redirected_to workperiod_path(assigns(:workperiod))
  end

  test "should show workperiod" do
    get :show, :id => workperiods(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => workperiods(:one).id
    assert_response :success
  end

  test "should update workperiod" do
    put :update, :id => workperiods(:one).id, :workperiod => { }
    assert_redirected_to workperiod_path(assigns(:workperiod))
  end

  test "should destroy workperiod" do
    assert_difference('Workperiod.count', -1) do
      delete :destroy, :id => workperiods(:one).id
    end

    assert_redirected_to workperiods_path
  end
end
