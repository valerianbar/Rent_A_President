require "test_helper"

class PresidentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presidents_index_url
    assert_response :success
  end

  test "should get show" do
    get presidents_show_url
    assert_response :success
  end
end
