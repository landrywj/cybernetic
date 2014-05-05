require 'test_helper'

class DevlogsControllerTest < ActionController::TestCase
  setup do
    @devlog = devlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devlog" do
    assert_difference('Devlog.count') do
      post :create, devlog: { message: @devlog.message, project_id: @devlog.project_id }
    end

    assert_redirected_to devlog_path(assigns(:devlog))
  end

  test "should show devlog" do
    get :show, id: @devlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devlog
    assert_response :success
  end

  test "should update devlog" do
    patch :update, id: @devlog, devlog: { message: @devlog.message, project_id: @devlog.project_id }
    assert_redirected_to devlog_path(assigns(:devlog))
  end

  test "should destroy devlog" do
    assert_difference('Devlog.count', -1) do
      delete :destroy, id: @devlog
    end

    assert_redirected_to devlogs_path
  end
end
