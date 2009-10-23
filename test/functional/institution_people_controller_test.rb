require 'test_helper'

class InstitutionPeopleControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_people)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_institution_person
    assert_difference('InstitutionPerson.count') do
      post :create, :institution_person => { }
    end

    assert_redirected_to institution_person_path(assigns(:institution_person))
  end

  def test_should_show_institution_person
    get :show, :id => institution_people(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => institution_people(:one).id
    assert_response :success
  end

  def test_should_update_institution_person
    put :update, :id => institution_people(:one).id, :institution_person => { }
    assert_redirected_to institution_person_path(assigns(:institution_person))
  end

  def test_should_destroy_institution_person
    assert_difference('InstitutionPerson.count', -1) do
      delete :destroy, :id => institution_people(:one).id
    end

    assert_redirected_to institution_people_path
  end
end
