require "test_helper"

class DevControllerTest < ActionDispatch::IntegrationTest
  test "should ping" do
	get '/ping'
	assert_response 204
  end

  test "should get flash" do
    get '/flash'
    assert_response :success
  end

=begin
  test "should get mailer" do
    get dev_mock_mailer_url
    assert_response :success
  end

  test "should get stream" do
    get dev_mock_stream_url
    assert_response :success
  end
=end
end
