require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Pickup"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Pickup"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Pickup"
  end

end
