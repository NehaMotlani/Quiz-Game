require 'test_helper'

class MinionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minion = minions(:one)
  end

  test "should get index" do
    get minions_url
    assert_response :success
  end

  test "should get new" do
    get new_minion_url
    assert_response :success
  end

  test "should create minion" do
    assert_difference('Minion.count') do
      post minions_url, params: { minion: { ans: @minion.ans, option1: @minion.option1, option2: @minion.option2, option3: @minion.option3, option4: @minion.option4, question: @minion.question } }
    end

    assert_redirected_to minion_url(Minion.last)
  end

  test "should show minion" do
    get minion_url(@minion)
    assert_response :success
  end

  test "should get edit" do
    get edit_minion_url(@minion)
    assert_response :success
  end

  test "should update minion" do
    patch minion_url(@minion), params: { minion: { ans: @minion.ans, option1: @minion.option1, option2: @minion.option2, option3: @minion.option3, option4: @minion.option4, question: @minion.question } }
    assert_redirected_to minion_url(@minion)
  end

  test "should destroy minion" do
    assert_difference('Minion.count', -1) do
      delete minion_url(@minion)
    end

    assert_redirected_to minions_url
  end
end
