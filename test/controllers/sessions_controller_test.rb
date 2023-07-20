require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "" do
    get "http://127.0.0.1:3000/login"
    assert_response:success
  end
end
