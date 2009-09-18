require 'test_helper'

class NewspapersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newspapers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newspaper" do
    assert_difference('Newspaper.count') do
      post :create, :newspaper => { }
    end

    assert_redirected_to newspaper_path(assigns(:newspaper))
  end

  test "should show newspaper" do
    get :show, :id => newspapers(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newspapers(:one).id
    assert_response :success
  end

  test "should update newspaper" do
    put :update, :id => newspapers(:one).id, :newspaper => { }
    assert_redirected_to newspaper_path(assigns(:newspaper))
  end

  test "should destroy newspaper" do
    assert_difference('Newspaper.count', -1) do
      delete :destroy, :id => newspapers(:one).id
    end

    assert_redirected_to newspapers_path
  end
end
