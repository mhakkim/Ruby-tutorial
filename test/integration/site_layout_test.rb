require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", "home", count: 1
    assert_select "a[href=?]", "help"
    assert_select "a[href=?]", "about"
    assert_select "a[href=?]", "contact"
    assert_select "a[href=?]", "signup"
  end
end
