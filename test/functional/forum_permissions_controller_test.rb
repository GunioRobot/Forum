require 'test_helper'

class ForumPermissionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ForumPermission.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ForumPermission.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ForumPermission.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to forum_permission_url(assigns(:forum_permission))
  end

  def test_edit
    get :edit, :id => ForumPermission.first
    assert_template 'edit'
  end

  def test_update_invalid
    ForumPermission.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ForumPermission.first
    assert_template 'edit'
  end

  def test_update_valid
    ForumPermission.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ForumPermission.first
    assert_redirected_to forum_permission_url(assigns(:forum_permission))
  end

  def test_destroy
    forum_permission = ForumPermission.first
    delete :destroy, :id => forum_permission
    assert_redirected_to forum_permissions_url
    assert !ForumPermission.exists?(forum_permission.id)
  end
end
