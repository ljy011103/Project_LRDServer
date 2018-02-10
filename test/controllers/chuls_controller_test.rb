require 'test_helper'

class ChulsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chul = chuls(:one)
  end

  test "should get index" do
    get chuls_url
    assert_response :success
  end

  test "should get new" do
    get new_chul_url
    assert_response :success
  end

  test "should create chul" do
    assert_difference('Chul.count') do
      post chuls_url, params: { chul: { content: @chul.content, title: @chul.title } }
    end

    assert_redirected_to chul_url(Chul.last)
  end

  test "should show chul" do
    get chul_url(@chul)
    assert_response :success
  end

  test "should get edit" do
    get edit_chul_url(@chul)
    assert_response :success
  end

  test "should update chul" do
    patch chul_url(@chul), params: { chul: { content: @chul.content, title: @chul.title } }
    assert_redirected_to chul_url(@chul)
  end

  test "should destroy chul" do
    assert_difference('Chul.count', -1) do
      delete chul_url(@chul)
    end

    assert_redirected_to chuls_url
  end
end
