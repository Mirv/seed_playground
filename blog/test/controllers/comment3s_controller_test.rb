require 'test_helper'

class Comment3sControllerTest < ActionController::TestCase
  setup do
    @comment3 = comment3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment3" do
    assert_difference('Comment3.count') do
      post :create, comment3: { content: @comment3.content, more: @comment3.more, post_id: @comment3.post_id, something: @comment3.something, something: @comment3.something, somethingelse: @comment3.somethingelse }
    end

    assert_redirected_to comment3_path(assigns(:comment3))
  end

  test "should show comment3" do
    get :show, id: @comment3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment3
    assert_response :success
  end

  test "should update comment3" do
    patch :update, id: @comment3, comment3: { content: @comment3.content, more: @comment3.more, post_id: @comment3.post_id, something: @comment3.something, something: @comment3.something, somethingelse: @comment3.somethingelse }
    assert_redirected_to comment3_path(assigns(:comment3))
  end

  test "should destroy comment3" do
    assert_difference('Comment3.count', -1) do
      delete :destroy, id: @comment3
    end

    assert_redirected_to comment3s_path
  end
end
