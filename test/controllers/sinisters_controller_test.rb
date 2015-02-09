require 'test_helper'

class SinistersControllerTest < ActionController::TestCase
  setup do
    @sinister = sinisters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sinisters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sinister" do
    assert_difference('Sinister.count') do
      post :create, sinister: { client_id: @sinister.client_id, comissao: @sinister.comissao, comissao_percentual: @sinister.comissao_percentual, data: @sinister.data, data_acidente: @sinister.data_acidente, data_recebimento: @sinister.data_recebimento, date: @sinister.date, seguradora: @sinister.seguradora, sinistro: @sinister.sinistro, status: @sinister.status, valor: @sinister.valor, valor_recebido: @sinister.valor_recebido }
    end

    assert_redirected_to sinister_path(assigns(:sinister))
  end

  test "should show sinister" do
    get :show, id: @sinister
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sinister
    assert_response :success
  end

  test "should update sinister" do
    patch :update, id: @sinister, sinister: { client_id: @sinister.client_id, comissao: @sinister.comissao, comissao_percentual: @sinister.comissao_percentual, data: @sinister.data, data_acidente: @sinister.data_acidente, data_recebimento: @sinister.data_recebimento, date: @sinister.date, seguradora: @sinister.seguradora, sinistro: @sinister.sinistro, status: @sinister.status, valor: @sinister.valor, valor_recebido: @sinister.valor_recebido }
    assert_redirected_to sinister_path(assigns(:sinister))
  end

  test "should destroy sinister" do
    assert_difference('Sinister.count', -1) do
      delete :destroy, id: @sinister
    end

    assert_redirected_to sinisters_path
  end
end
