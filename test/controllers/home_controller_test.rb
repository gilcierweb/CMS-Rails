require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get sobre" do
    get :sobre
    assert_response :success
  end

  test "should get noticias" do
    get :noticias
    assert_response :success
  end

  test "should get galerias" do
    get :galerias
    assert_response :success
  end

  test "should get videos" do
    get :videos
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

end
