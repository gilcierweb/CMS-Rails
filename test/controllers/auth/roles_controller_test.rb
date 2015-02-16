require 'test_helper'

class Auth::RolesControllerTest < ActionController::TestCase
  setup do
    @auth_role = auth_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_role" do
    assert_difference('Auth::Role.count') do
      post :create, auth_role: { description: @auth_role.description, name: @auth_role.name, title: @auth_role.title }
    end

    assert_redirected_to auth_role_path(assigns(:auth_role))
  end

  test "should show auth_role" do
    get :show, id: @auth_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth_role
    assert_response :success
  end

  test "should update auth_role" do
    patch :update, id: @auth_role, auth_role: { description: @auth_role.description, name: @auth_role.name, title: @auth_role.title }
    assert_redirected_to auth_role_path(assigns(:auth_role))
  end

  test "should destroy auth_role" do
    assert_difference('Auth::Role.count', -1) do
      delete :destroy, id: @auth_role
    end

    assert_redirected_to auth_roles_path
  end
end
