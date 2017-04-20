require 'test_helper'

class DatalogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datalog = datalogs(:one)
  end

  test "should get index" do
    get datalogs_url
    assert_response :success
  end

  test "should get new" do
    get new_datalog_url
    assert_response :success
  end

  test "should create datalog" do
    assert_difference('Datalog.count') do
      post datalogs_url, params: { datalog: { campo_alterado: @datalog.campo_alterado, valor_anterior: @datalog.valor_anterior, valor_atual: @datalog.valor_atual } }
    end

    assert_redirected_to datalog_url(Datalog.last)
  end

  test "should show datalog" do
    get datalog_url(@datalog)
    assert_response :success
  end

  test "should get edit" do
    get edit_datalog_url(@datalog)
    assert_response :success
  end

  test "should update datalog" do
    patch datalog_url(@datalog), params: { datalog: { campo_alterado: @datalog.campo_alterado, valor_anterior: @datalog.valor_anterior, valor_atual: @datalog.valor_atual } }
    assert_redirected_to datalog_url(@datalog)
  end

  test "should destroy datalog" do
    assert_difference('Datalog.count', -1) do
      delete datalog_url(@datalog)
    end

    assert_redirected_to datalogs_url
  end
end
