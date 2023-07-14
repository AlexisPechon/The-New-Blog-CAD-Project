require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # Unit Testing
  test "if the title has a valid input" do
    blogTitle = Article.new(title: "The Most Basic Game")
    assert_not blogTitle.valid?
  end

  test "if the title has an invalid input" do
    blogTitle = Article.new(title: nil)
    assert_not blogTitle.valid?
  end
  # End of Unit Testing

  # Functional Testing
  test "if it works" do
    get "http://127.0.0.1:3000/articles"
    assert_response:success
  end
  
  #End of Functional Testing

  # Integration Testing

  test "should get the homepage" do
    get '/articles'
    assert_response:success
  end

  # End of Integration Testing
  
end
