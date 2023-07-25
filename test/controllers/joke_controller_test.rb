require "test_helper"

class JokeControllerTest < ActionDispatch::IntegrationTest
  test "should get joke" do
    get joke_joke_url
    assert_response :success
  end
end
