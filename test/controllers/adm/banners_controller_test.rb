require 'test_helper'

class Adm::BannersControllerTest < ActionController::TestCase
  setup do
    @adm_banner = adm_banners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adm_banners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm_banner" do
    assert_difference('Adm::Banner.count') do
      post :create, adm_banner: { imagem: @adm_banner.imagem, link: @adm_banner.link, titulo: @adm_banner.titulo }
    end

    assert_redirected_to adm_banner_path(assigns(:adm_banner))
  end

  test "should show adm_banner" do
    get :show, id: @adm_banner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm_banner
    assert_response :success
  end

  test "should update adm_banner" do
    patch :update, id: @adm_banner, adm_banner: { imagem: @adm_banner.imagem, link: @adm_banner.link, titulo: @adm_banner.titulo }
    assert_redirected_to adm_banner_path(assigns(:adm_banner))
  end

  test "should destroy adm_banner" do
    assert_difference('Adm::Banner.count', -1) do
      delete :destroy, id: @adm_banner
    end

    assert_redirected_to adm_banners_path
  end
end
