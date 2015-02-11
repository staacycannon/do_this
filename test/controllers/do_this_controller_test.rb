require 'test_helper'

class DoThisControllerTest < ActionController::TestCase
  setup do
    @do_thi = do_this(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:do_this)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create do_thi" do
    assert_difference('DoThi.count') do
      post :create, do_thi: { done: @do_thi.done, due: @do_thi.due, notes: @do_thi.notes, title: @do_thi.title }
    end

    assert_redirected_to do_thi_path(assigns(:do_thi))
  end

  test "should show do_thi" do
    get :show, id: @do_thi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @do_thi
    assert_response :success
  end

  test "should update do_thi" do
    patch :update, id: @do_thi, do_thi: { done: @do_thi.done, due: @do_thi.due, notes: @do_thi.notes, title: @do_thi.title }
    assert_redirected_to do_thi_path(assigns(:do_thi))
  end

  test "should destroy do_thi" do
    assert_difference('DoThi.count', -1) do
      delete :destroy, id: @do_thi
    end

    assert_redirected_to do_this_path
  end
end
