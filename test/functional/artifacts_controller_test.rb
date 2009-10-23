require 'test_helper'

class ArtifactsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:artifacts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_artifact
    assert_difference('Artifact.count') do
      post :create, :artifact => { }
    end

    assert_redirected_to artifact_path(assigns(:artifact))
  end

  def test_should_show_artifact
    get :show, :id => artifacts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => artifacts(:one).id
    assert_response :success
  end

  def test_should_update_artifact
    put :update, :id => artifacts(:one).id, :artifact => { }
    assert_redirected_to artifact_path(assigns(:artifact))
  end

  def test_should_destroy_artifact
    assert_difference('Artifact.count', -1) do
      delete :destroy, :id => artifacts(:one).id
    end

    assert_redirected_to artifacts_path
  end
end
