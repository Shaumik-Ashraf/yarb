require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get readme" do
    get pages_readme_url
    assert_response :success
  end

  test "should get server" do
    get pages_server_url
    assert_response :success
  end
end
