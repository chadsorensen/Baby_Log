require 'test_helper'

class FeedingsControllerTest < ActionController::TestCase
  setup do
    @feeding = feedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feeding" do
    assert_difference('Feeding.count') do
      post :create, feeding: { endtime: @feeding.endtime, side: @feeding.side, starttime: @feeding.starttime }
    end

    assert_redirected_to feeding_path(assigns(:feeding))
  end

  test "should show feeding" do
    get :show, id: @feeding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feeding
    assert_response :success
  end

  test "should update feeding" do
    put :update, id: @feeding, feeding: { endtime: @feeding.endtime, side: @feeding.side, starttime: @feeding.starttime }
    assert_redirected_to feeding_path(assigns(:feeding))
  end

  test "should destroy feeding" do
    assert_difference('Feeding.count', -1) do
      delete :destroy, id: @feeding
    end

    assert_redirected_to feedings_path
  end
end
