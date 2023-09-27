require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # test "should get root" do
  #   get root_path
  #   assert_response :success
  # end

  test "should get home" do
    get root_path #static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App" # #{@base_title}
  end

  test "should get help" do
    get help_path #static_pages_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do # --> failed test
    get about_path #static_pages_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get contact_path  #static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end

