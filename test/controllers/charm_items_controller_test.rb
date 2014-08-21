require 'test_helper'

class CharmItemsControllerTest < ActionController::TestCase
  setup do
    @charm_item = charm_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charm_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charm_item" do
    assert_difference('CharmItem.count') do
      post :create, charm_item: { Name: @charm_item.Name, ProductID: @charm_item.ProductID }
    end

    assert_redirected_to charm_item_path(assigns(:charm_item))
  end

  test "should show charm_item" do
    get :show, id: @charm_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charm_item
    assert_response :success
  end

  test "should update charm_item" do
    patch :update, id: @charm_item, charm_item: { Name: @charm_item.Name, ProductID: @charm_item.ProductID }
    assert_redirected_to charm_item_path(assigns(:charm_item))
  end

  test "should destroy charm_item" do
    assert_difference('CharmItem.count', -1) do
      delete :destroy, id: @charm_item
    end

    assert_redirected_to charm_items_path
  end
end
