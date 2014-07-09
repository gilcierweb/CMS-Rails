require 'test_helper'

class Adm::NoticiasControllerTest < ActionController::TestCase
  setup do
    @adm_noticia = adm_noticias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adm_noticias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm_noticia" do
    assert_difference('Adm::Noticia.count') do
      post :create, adm_noticia: { autor: @adm_noticia.autor, content: @adm_noticia.content, img_capa: @adm_noticia.img_capa, subtitulo: @adm_noticia.subtitulo, titulo: @adm_noticia.titulo }
    end

    assert_redirected_to adm_noticia_path(assigns(:adm_noticia))
  end

  test "should show adm_noticia" do
    get :show, id: @adm_noticia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm_noticia
    assert_response :success
  end

  test "should update adm_noticia" do
    patch :update, id: @adm_noticia, adm_noticia: { autor: @adm_noticia.autor, content: @adm_noticia.content, img_capa: @adm_noticia.img_capa, subtitulo: @adm_noticia.subtitulo, titulo: @adm_noticia.titulo }
    assert_redirected_to adm_noticia_path(assigns(:adm_noticia))
  end

  test "should destroy adm_noticia" do
    assert_difference('Adm::Noticia.count', -1) do
      delete :destroy, id: @adm_noticia
    end

    assert_redirected_to adm_noticias_path
  end
end
