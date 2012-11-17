require 'test_helper'

class GuideItemsControllerTest < ActionController::TestCase
  setup do
    @guide_item = guide_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guide_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guide_item" do
    assert_difference('GuideItem.count') do
      post :create, guide_item: { author: @guide_item.author, title: @guide_item.title }
    end

    assert_redirected_to guide_item_path(assigns(:guide_item))
  end

  test "should show guide_item" do
    get :show, id: @guide_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guide_item
    assert_response :success
  end

  test "should update guide_item" do
    put :update, id: @guide_item, guide_item: { author: @guide_item.author, title: @guide_item.title }
    assert_redirected_to guide_item_path(assigns(:guide_item))
  end

  test "should destroy guide_item" do
    assert_difference('GuideItem.count', -1) do
      delete :destroy, id: @guide_item
    end

    assert_redirected_to guide_items_path
  end
end
