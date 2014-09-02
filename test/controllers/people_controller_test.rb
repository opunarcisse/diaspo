require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { city_in_cameroon: @person.city_in_cameroon, date_of_birth: @person.date_of_birth, email_address: @person.email_address, first_name: @person.first_name, gender: @person.gender, host_country: @person.host_country, last_name: @person.last_name, leve_of_education: @person.leve_of_education, marital_status: @person.marital_status, middle_name: @person.middle_name, other_information: @person.other_information, profession: @person.profession, year_of_travel: @person.year_of_travel }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { city_in_cameroon: @person.city_in_cameroon, date_of_birth: @person.date_of_birth, email_address: @person.email_address, first_name: @person.first_name, gender: @person.gender, host_country: @person.host_country, last_name: @person.last_name, leve_of_education: @person.leve_of_education, marital_status: @person.marital_status, middle_name: @person.middle_name, other_information: @person.other_information, profession: @person.profession, year_of_travel: @person.year_of_travel }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
