require "test_helper"

class Owner::PresidentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_presidents_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_presidents_create_url
    assert_response :success
  end
end
