require "test_helper"

class TitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @title = titles(:one)
  end

  test "should get index" do
    get titles_url, as: :json
    assert_response :success
  end

  test "should create title" do
    assert_difference("Title.count") do
      post titles_url, params: { title: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show title" do
    get title_url(@title), as: :json
    assert_response :success
  end

  test "should update title" do
    patch title_url(@title), params: { title: {  } }, as: :json
    assert_response :success
  end

  test "should destroy title" do
    assert_difference("Title.count", -1) do
      delete title_url(@title), as: :json
    end

    assert_response :no_content
  end
end
