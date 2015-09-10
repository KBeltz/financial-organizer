require 'test_helper'

class AccountStatusesControllerTest < ActionController::TestCase
  setup do
    @account_status = account_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_status" do
    assert_difference('AccountStatus.count') do
      post :create, account_status: { account_id: @account_status.account_id, due_date: @account_status.due_date, overdue: @account_status.overdue }
    end

    assert_redirected_to account_status_path(assigns(:account_status))
  end

  test "should show account_status" do
    get :show, id: @account_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_status
    assert_response :success
  end

  test "should update account_status" do
    patch :update, id: @account_status, account_status: { account_id: @account_status.account_id, due_date: @account_status.due_date, overdue: @account_status.overdue }
    assert_redirected_to account_status_path(assigns(:account_status))
  end

  test "should destroy account_status" do
    assert_difference('AccountStatus.count', -1) do
      delete :destroy, id: @account_status
    end

    assert_redirected_to account_statuses_path
  end
end
