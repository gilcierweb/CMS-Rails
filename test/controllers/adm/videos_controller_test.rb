require 'test_helper'

class Adm::VideosControllerTest < ActionController::TestCase
  setup do
    @adm_video = adm_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adm_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm_video" do
    assert_difference('Adm::Video.count') do
      post :create, adm_video: { url_codigo: @adm_video.url_codigo, titulo: @adm_video.titulo }
    end

    assert_redirected_to adm_video_path(assigns(:adm_video))
  end

  test "should show adm_video" do
    get :show, id: @adm_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm_video
    assert_response :success
  end

  test "should update adm_video" do
    patch :update, id: @adm_video, adm_video: { url_codigo: @adm_video.url_codigo, titulo: @adm_video.titulo }
    assert_redirected_to adm_video_path(assigns(:adm_video))
  end

  test "should destroy adm_video" do
    assert_difference('Adm::Video.count', -1) do
      delete :destroy, id: @adm_video
    end

    assert_redirected_to adm_videos_path
  end
end
