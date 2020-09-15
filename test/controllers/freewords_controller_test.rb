require 'test_helper'

class FreewordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get freewords_new_url
    assert_response :success
  end

  test "should get edit" do
    get freewords_edit_url
    assert_response :success
  end

end
