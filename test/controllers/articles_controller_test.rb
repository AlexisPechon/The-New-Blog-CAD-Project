require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "if the title has a valid input" do
    blogTitle = Article.new(title: "The Most Basic Game")
    assert_not blogTitle.valid?
  end

  test "if the title has an invalid input" do
    blogTitle = Article.new(title: nil)
    assert_not blogTitle.valid?
  end
  
  test "if it works" do
    get "http://127.0.0.1:3000/articles/new"
    assert_response:success
  end
end
