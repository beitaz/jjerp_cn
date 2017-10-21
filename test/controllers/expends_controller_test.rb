require 'test_helper'

class ExpendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expend = expends(:one)
  end

  test "should get index" do
    get expends_url
    assert_response :success
  end

  test "should get new" do
    get new_expend_url
    assert_response :success
  end

  test "should create expend" do
    assert_difference('Expend.count') do
      post expends_url, params: { expend: { amount: @expend.amount, creator: @expend.creator, deleted: @expend.deleted, note: @expend.note, reason: @expend.reason } }
    end

    assert_redirected_to expend_url(Expend.last)
  end

  test "should show expend" do
    get expend_url(@expend)
    assert_response :success
  end

  test "should get edit" do
    get edit_expend_url(@expend)
    assert_response :success
  end

  test "should update expend" do
    patch expend_url(@expend), params: { expend: { amount: @expend.amount, creator: @expend.creator, deleted: @expend.deleted, note: @expend.note, reason: @expend.reason } }
    assert_redirected_to expend_url(@expend)
  end

  test "should destroy expend" do
    assert_difference('Expend.count', -1) do
      delete expend_url(@expend)
    end

    assert_redirected_to expends_url
  end
end
