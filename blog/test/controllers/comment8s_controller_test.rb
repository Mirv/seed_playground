require 'test_helper'

class Comment8sControllerTest < ActionController::TestCase
  setup do
    @comment8 = comment8s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment8s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment8" do
    assert_difference('Comment8.count') do
      post :create, comment8: { content: @comment8.content, more: @comment8.more, post_id: @comment8.post_id, something: @comment8.something, something: @comment8.something, somethingelse: @comment8.somethingelse }
    end

    assert_redirected_to comment8_path(assigns(:comment8))
  end

  test "should show comment8" do
    get :show, id: @comment8
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment8
    assert_response :success
  end

  test "should update comment8" do
    patch :update, id: @comment8, comment8: { content: @comment8.content, more: @comment8.more, post_id: @comment8.post_id, something: @comment8.something, something: @comment8.something, somethingelse: @comment8.somethingelse }
    assert_redirected_to comment8_path(assigns(:comment8))
  end

  test "should destroy comment8" do
    assert_difference('Comment8.count', -1) do
      delete :destroy, id: @comment8
    end

    assert_redirected_to comment8s_path
  end
end
