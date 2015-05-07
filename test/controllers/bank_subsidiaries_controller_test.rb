require 'test_helper'

class BankSubsidiariesControllerTest < ActionController::TestCase
  setup do
    @bank_subsidiary = bank_subsidiaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_subsidiaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_subsidiary" do
    assert_difference('BankSubsidiary.count') do
      post :create, bank_subsidiary: { address: @bank_subsidiary.address, bank_id: @bank_subsidiary.bank_id }
    end

    assert_redirected_to bank_subsidiary_path(assigns(:bank_subsidiary))
  end

  test "should show bank_subsidiary" do
    get :show, id: @bank_subsidiary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_subsidiary
    assert_response :success
  end

  test "should update bank_subsidiary" do
    patch :update, id: @bank_subsidiary, bank_subsidiary: { address: @bank_subsidiary.address, bank_id: @bank_subsidiary.bank_id }
    assert_redirected_to bank_subsidiary_path(assigns(:bank_subsidiary))
  end

  test "should destroy bank_subsidiary" do
    assert_difference('BankSubsidiary.count', -1) do
      delete :destroy, id: @bank_subsidiary
    end

    assert_redirected_to bank_subsidiaries_path
  end
end
