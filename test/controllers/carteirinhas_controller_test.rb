require 'test_helper'

class CarteirinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carteirinha = carteirinhas(:one)
  end

  test "should get index" do
    get carteirinhas_url
    assert_response :success
  end

  test "should get new" do
    get new_carteirinha_url
    assert_response :success
  end

  test "should create carteirinha" do
    assert_difference('Carteirinha.count') do
      post carteirinhas_url, params: { carteirinha: { data_criacao: @carteirinha.data_criacao, data_vencimento: @carteirinha.data_vencimento, status: @carteirinha.status, via: @carteirinha.via } }
    end

    assert_redirected_to carteirinha_url(Carteirinha.last)
  end

  test "should show carteirinha" do
    get carteirinha_url(@carteirinha)
    assert_response :success
  end

  test "should get edit" do
    get edit_carteirinha_url(@carteirinha)
    assert_response :success
  end

  test "should update carteirinha" do
    patch carteirinha_url(@carteirinha), params: { carteirinha: { data_criacao: @carteirinha.data_criacao, data_vencimento: @carteirinha.data_vencimento, status: @carteirinha.status, via: @carteirinha.via } }
    assert_redirected_to carteirinha_url(@carteirinha)
  end

  test "should destroy carteirinha" do
    assert_difference('Carteirinha.count', -1) do
      delete carteirinha_url(@carteirinha)
    end

    assert_redirected_to carteirinhas_url
  end
end
