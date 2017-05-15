require 'test_helper'

class CadastrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get cadastros_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_url
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post cadastros_url, params: { cadastro: { bairro: @cadastro.bairro, celular: @cadastro.celular, cidade: @cadastro.cidade, complemento: @cadastro.complemento, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, nome: @cadastro.nome, numero: @cadastro.numero, rg: @cadastro.rg, rua: @cadastro.rua, telefone: @cadastro.telefone, usuarios_id: @cadastro.usuarios_id } }
    end

    assert_redirected_to cadastro_url(Cadastro.last)
  end

  test "should show cadastro" do
    get cadastro_url(@cadastro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_url(@cadastro)
    assert_response :success
  end

  test "should update cadastro" do
    patch cadastro_url(@cadastro), params: { cadastro: { bairro: @cadastro.bairro, celular: @cadastro.celular, cidade: @cadastro.cidade, complemento: @cadastro.complemento, cpf: @cadastro.cpf, data_nascimento: @cadastro.data_nascimento, nome: @cadastro.nome, numero: @cadastro.numero, rg: @cadastro.rg, rua: @cadastro.rua, telefone: @cadastro.telefone, usuarios_id: @cadastro.usuarios_id } }
    assert_redirected_to cadastro_url(@cadastro)
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete cadastro_url(@cadastro)
    end

    assert_redirected_to cadastros_url
  end
end
