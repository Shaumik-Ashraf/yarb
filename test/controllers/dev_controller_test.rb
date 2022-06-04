require "test_helper"

class DevControllerTest < ActionDispatch::IntegrationTest
  test "should ping" do
	get '/ping'
	assert_response :success
  end

  test "should get flash" do
    get '/flash'
    assert_response :redirect
    follow_redirect!
    assert_response :success
	assert_select "div", "Mock Notice!"
	assert_select "div", "Mock Alert!"
  end

=begin
  test "should get mailer" do
    get '/mailer'
    assert_response :success
  end

  test "should get stream" do
    get '/stream'
    assert_response :success
  end
=end
end
