require 'test_helper'

class BschoolAppsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:bschool_apps)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_bschool_app
    assert_difference('BschoolApp.count') do
      post :create, :bschool_app => { }
    end

    assert_redirected_to bschool_app_path(assigns(:bschool_app))
  end

  def test_should_show_bschool_app
    get :show, :id => bschool_apps(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => bschool_apps(:one).id
    assert_response :success
  end

  def test_should_update_bschool_app
    put :update, :id => bschool_apps(:one).id, :bschool_app => { }
    assert_redirected_to bschool_app_path(assigns(:bschool_app))
  end

  def test_should_destroy_bschool_app
    assert_difference('BschoolApp.count', -1) do
      delete :destroy, :id => bschool_apps(:one).id
    end

    assert_redirected_to bschool_apps_path
  end
end
