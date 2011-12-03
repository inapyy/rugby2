require 'test_helper'

class SiaikekkasControllerTest < ActionController::TestCase
  setup do
    @siaikekka = siaikekkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siaikekkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siaikekka" do
    assert_difference('Siaikekka.count') do
      post :create, :siaikekka => @siaikekka.attributes
    end

    assert_redirected_to siaikekka_path(assigns(:siaikekka))
  end

  test "should show siaikekka" do
    get :show, :id => @siaikekka.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @siaikekka.to_param
    assert_response :success
  end

  test "should update siaikekka" do
    put :update, :id => @siaikekka.to_param, :siaikekka => @siaikekka.attributes
    assert_redirected_to siaikekka_path(assigns(:siaikekka))
  end

  test "should destroy siaikekka" do
    assert_difference('Siaikekka.count', -1) do
      delete :destroy, :id => @siaikekka.to_param
    end

    assert_redirected_to siaikekkas_path
  end
end
