require 'test_helper'

class Comment12sControllerTest < ActionController::TestCase
  setup do
    @comment12 = comment12s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment12s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment12" do
    assert_difference('Comment12.count') do
      post :create, comment12: { content: @comment12.content, post_id: @comment12.post_id, something: @comment12.something, something_more: @comment12.something_more, somethingelse: @comment12.somethingelse }
    end

    assert_redirected_to comment12_path(assigns(:comment12))
  end

  test "should show comment12" do
    get :show, id: @comment12
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment12
    assert_response :success
  end

  test "should update comment12" do
    patch :update, id: @comment12, comment12: { content: @comment12.content, post_id: @comment12.post_id, something: @comment12.something, something_more: @comment12.something_more, somethingelse: @comment12.somethingelse }
    assert_redirected_to comment12_path(assigns(:comment12))
  end

  test "should destroy comment12" do
    assert_difference('Comment12.count', -1) do
      delete :destroy, id: @comment12
    end

    assert_redirected_to comment12s_path
  end
end
