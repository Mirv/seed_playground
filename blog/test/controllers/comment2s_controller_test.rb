require 'test_helper'

class Comment2sControllerTest < ActionController::TestCase
  setup do
    @comment2 = comment2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment2" do
    assert_difference('Comment2.count') do
      post :create, comment2: { content: @comment2.content, more: @comment2.more, post_id: @comment2.post_id, something: @comment2.something, something: @comment2.something, somethingelse: @comment2.somethingelse }
    end

    assert_redirected_to comment2_path(assigns(:comment2))
  end

  test "should show comment2" do
    get :show, id: @comment2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment2
    assert_response :success
  end

  test "should update comment2" do
    patch :update, id: @comment2, comment2: { content: @comment2.content, more: @comment2.more, post_id: @comment2.post_id, something: @comment2.something, something: @comment2.something, somethingelse: @comment2.somethingelse }
    assert_redirected_to comment2_path(assigns(:comment2))
  end

  test "should destroy comment2" do
    assert_difference('Comment2.count', -1) do
      delete :destroy, id: @comment2
    end

    assert_redirected_to comment2s_path
  end
end
