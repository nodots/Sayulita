require 'test_helper'

class ArtifactBundlesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:artifact_bundles)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_artifact_bundle
    assert_difference('ArtifactBundle.count') do
      post :create, :artifact_bundle => { }
    end

    assert_redirected_to artifact_bundle_path(assigns(:artifact_bundle))
  end

  def test_should_show_artifact_bundle
    get :show, :id => artifact_bundles(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => artifact_bundles(:one).id
    assert_response :success
  end

  def test_should_update_artifact_bundle
    put :update, :id => artifact_bundles(:one).id, :artifact_bundle => { }
    assert_redirected_to artifact_bundle_path(assigns(:artifact_bundle))
  end

  def test_should_destroy_artifact_bundle
    assert_difference('ArtifactBundle.count', -1) do
      delete :destroy, :id => artifact_bundles(:one).id
    end

    assert_redirected_to artifact_bundles_path
  end
end
