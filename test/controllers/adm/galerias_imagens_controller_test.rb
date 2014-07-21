require 'test_helper'

class Adm::GaleriasImagensControllerTest < ActionController::TestCase
  setup do
    @adm_galerias_imagem = adm_galerias_imagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adm_galerias_imagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adm_galerias_imagem" do
    assert_difference('Adm::GaleriasImagem.count') do
      post :create, adm_galerias_imagem: { galeria_id: @adm_galerias_imagem.galeria_id, imagem: @adm_galerias_imagem.imagem }
    end

    assert_redirected_to adm_galerias_imagem_path(assigns(:adm_galerias_imagem))
  end

  test "should show adm_galerias_imagem" do
    get :show, id: @adm_galerias_imagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adm_galerias_imagem
    assert_response :success
  end

  test "should update adm_galerias_imagem" do
    patch :update, id: @adm_galerias_imagem, adm_galerias_imagem: { galeria_id: @adm_galerias_imagem.galeria_id, imagem: @adm_galerias_imagem.imagem }
    assert_redirected_to adm_galerias_imagem_path(assigns(:adm_galerias_imagem))
  end

  test "should destroy adm_galerias_imagem" do
    assert_difference('Adm::GaleriasImagem.count', -1) do
      delete :destroy, id: @adm_galerias_imagem
    end

    assert_redirected_to adm_galerias_imagens_path
  end
end
