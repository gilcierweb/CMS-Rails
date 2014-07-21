require 'test_helper'

class Adm::GaleriasControllerTest < ActionController::TestCase
  setup do
    @adm_galeria = adm_galerias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adm_galerias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm_galeria" do
    assert_difference('Adm::Galeria.count') do
      post :create, adm_galeria: { descricao: @adm_galeria.descricao, imagem_capa: @adm_galeria.imagem_capa, titulo: @adm_galeria.titulo }
    end

    assert_redirected_to adm_galeria_path(assigns(:adm_galeria))
  end

  test "should show adm_galeria" do
    get :show, id: @adm_galeria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm_galeria
    assert_response :success
  end

  test "should update adm_galeria" do
    patch :update, id: @adm_galeria, adm_galeria: { descricao: @adm_galeria.descricao, imagem_capa: @adm_galeria.imagem_capa, titulo: @adm_galeria.titulo }
    assert_redirected_to adm_galeria_path(assigns(:adm_galeria))
  end

  test "should destroy adm_galeria" do
    assert_difference('Adm::Galeria.count', -1) do
      delete :destroy, id: @adm_galeria
    end

    assert_redirected_to adm_galerias_path
  end
end
