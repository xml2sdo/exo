require 'test_helper'

class TransacsControllerTest < ActionController::TestCase
  setup do
    @transac = transacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transac" do
    assert_difference('Transac.count') do
      post :create, transac: { account_id: @transac.account_id, amount: @transac.amount, amount: @transac.amount, inout: @transac.inout, title: @transac.title }
    end

    assert_redirected_to transac_path(assigns(:transac))
  end

  test "should show transac" do
    get :show, id: @transac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transac
    assert_response :success
  end

  test "should update transac" do
    patch :update, id: @transac, transac: { account_id: @transac.account_id, amount: @transac.amount, amount: @transac.amount, inout: @transac.inout, title: @transac.title }
    assert_redirected_to transac_path(assigns(:transac))
  end

  test "should destroy transac" do
    assert_difference('Transac.count', -1) do
      delete :destroy, id: @transac
    end

    assert_redirected_to transacs_path
  end
end
