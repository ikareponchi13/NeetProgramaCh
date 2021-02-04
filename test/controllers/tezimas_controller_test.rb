require 'test_helper'

class TezimasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tezimas_index_url
    assert_response :success
  end

  test "should get show" do
    get tezimas_show_url
    assert_response :success
  end

end
