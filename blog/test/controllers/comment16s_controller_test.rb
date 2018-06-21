require 'test_helper'

class Comment16sControllerTest < ActionController::TestCase
  setup do
    @comment16 = comment16s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment16s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment16" do
    assert_difference('Comment16.count') do
      post :create, comment16: { content: @comment16.content, post_id: @comment16.post_id, something: @comment16.something, something_more: @comment16.something_more, somethingelse: @comment16.somethingelse }
    end

    assert_redirected_to comment16_path(assigns(:comment16))
  end

  test "should show comment16" do
    get :show, id: @comment16
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment16
    assert_response :success
  end

  test "should update comment16" do
    patch :update, id: @comment16, comment16: { content: @comment16.content, post_id: @comment16.post_id, something: @comment16.something, something_more: @comment16.something_more, somethingelse: @comment16.somethingelse }
    assert_redirected_to comment16_path(assigns(:comment16))
  end

  test "should destroy comment16" do
    assert_difference('Comment16.count', -1) do
      delete :destroy, id: @comment16
    end

    assert_redirected_to comment16s_path
  end
end
