require 'test_helper'

class AcountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acount = acounts(:one)
  end

  test "should get index" do
    get acounts_url, as: :json
    assert_response :success
  end

  test "should create acount" do
    assert_difference('Acount.count') do
      post acounts_url, params: { acount: { email: @acount.email, name: @acount.name } }, as: :json
    end

    assert_response 201
  end

  test "should show acount" do
    get acount_url(@acount), as: :json
    assert_response :success
  end

  test "should update acount" do
    patch acount_url(@acount), params: { acount: { email: @acount.email, name: @acount.name } }, as: :json
    assert_response 200
  end

  test "should destroy acount" do
    assert_difference('Acount.count', -1) do
      delete acount_url(@acount), as: :json
    end

    assert_response 204
  end
end
