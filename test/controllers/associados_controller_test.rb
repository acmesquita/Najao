require 'test_helper'

class AssociadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @associado = associados(:one)
  end

  test "should get index" do
    get associados_url
    assert_response :success
  end

  test "should get new" do
    get new_associado_url
    assert_response :success
  end

  test "should create associado" do
    assert_difference('Associado.count') do
      post associados_url, params: { associado: { bairro: @associado.bairro, celular: @associado.celular, cidade: @associado.cidade, cpf: @associado.cpf, email: @associado.email, estado: @associado.estado, informativo: @associado.informativo, logradouro: @associado.logradouro, matricula: @associado.matricula, nascimento: @associado.nascimento, nome: @associado.nome, numero: @associado.numero, rg: @associado.rg, status: @associado.status } }
    end

    assert_redirected_to associado_url(Associado.last)
  end

  test "should show associado" do
    get associado_url(@associado)
    assert_response :success
  end

  test "should get edit" do
    get edit_associado_url(@associado)
    assert_response :success
  end

  test "should update associado" do
    patch associado_url(@associado), params: { associado: { bairro: @associado.bairro, celular: @associado.celular, cidade: @associado.cidade, cpf: @associado.cpf, email: @associado.email, estado: @associado.estado, informativo: @associado.informativo, logradouro: @associado.logradouro, matricula: @associado.matricula, nascimento: @associado.nascimento, nome: @associado.nome, numero: @associado.numero, rg: @associado.rg, status: @associado.status } }
    assert_redirected_to associado_url(@associado)
  end

  test "should destroy associado" do
    assert_difference('Associado.count', -1) do
      delete associado_url(@associado)
    end

    assert_redirected_to associados_url
  end
end
