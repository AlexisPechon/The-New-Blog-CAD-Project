require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "to test if the body of the comments has a valid input" do
    blogBody = Article.new(body: "This is an amazing example of a body")
    assert_not blogBody.valid?
  end

  test "to test if the body of the comments has an invalid input" do
    blogBody = Article.new(body: nil)
    assert_not blogBody.valid?
  end
  
end
