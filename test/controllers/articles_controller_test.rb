require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "if the title is a valid" do
    blogTitle = Article.new(title: "The Most Basic Game")
    assert_not blogTitle.valid?
end
