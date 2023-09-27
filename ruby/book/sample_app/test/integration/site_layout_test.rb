require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "layout links" do # thu cac link tren frontend
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2 # count = 2 co nghia la co 2 link , 1 cho logo vaf 1 cho navigation menu element
    assert_select "a[href=?]", help_path # help_path se duoc thay cho dau cham hoi cua href=?
    assert_select "a[href=?]", about_path # about_path //
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
  end
end
