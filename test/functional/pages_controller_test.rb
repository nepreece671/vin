require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Page.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Page.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end

  def test_destroy
    page = Page.first
    delete :destroy, :id => page
    assert_redirected_to root_url
    assert !Page.exists?(page.id)
  end
end
