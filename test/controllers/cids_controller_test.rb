require 'test_helper'

class CidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cid = cids(:one)
  end

  test "should get index" do
    get cids_url
    assert_response :success
  end

  test "should get new" do
    get new_cid_url
    assert_response :success
  end

  test "should create cid" do
    assert_difference('Cid.count') do
      post cids_url, params: { cid: { cod_doenca: @cid.cod_doenca, nome_doenca: @cid.nome_doenca } }
    end

    assert_redirected_to cid_url(Cid.last)
  end

  test "should show cid" do
    get cid_url(@cid)
    assert_response :success
  end

  test "should get edit" do
    get edit_cid_url(@cid)
    assert_response :success
  end

  test "should update cid" do
    patch cid_url(@cid), params: { cid: { cod_doenca: @cid.cod_doenca, nome_doenca: @cid.nome_doenca } }
    assert_redirected_to cid_url(@cid)
  end

  test "should destroy cid" do
    assert_difference('Cid.count', -1) do
      delete cid_url(@cid)
    end

    assert_redirected_to cids_url
  end
end
