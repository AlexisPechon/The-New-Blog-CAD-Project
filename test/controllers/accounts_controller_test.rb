require "test_helper"

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get accounts_new_url
    assert_response :success
  end

  test "should get create" do
    get accounts_create_url
    assert_response :success
  end

  test "should get login" do
    get accounts_login_url
    assert_response :success
  end

  test "should get logout" do
    get accounts_logout_url
    assert_response :success
  end
end
