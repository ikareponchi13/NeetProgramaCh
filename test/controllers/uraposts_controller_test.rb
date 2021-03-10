require 'test_helper'

class UrapostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uraposts_index_url
    assert_response :success
  end

  test "should get show" do
    get uraposts_show_url
    assert_response :success
  end

end
