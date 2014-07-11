require 'test_helper'

class NotaControllerTest < ActionController::TestCase
  setup do
    @notum = nota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notum" do
    assert_difference('Notum.count') do
      post :create, notum: { biologia: @notum.biologia, historia: @notum.historia, matematica: @notum.matematica, portugues: @notum.portugues }
    end

    assert_redirected_to notum_path(assigns(:notum))
  end

  test "should show notum" do
    get :show, id: @notum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notum
    assert_response :success
  end

  test "should update notum" do
    patch :update, id: @notum, notum: { biologia: @notum.biologia, historia: @notum.historia, matematica: @notum.matematica, portugues: @notum.portugues }
    assert_redirected_to notum_path(assigns(:notum))
  end

  test "should destroy notum" do
    assert_difference('Notum.count', -1) do
      delete :destroy, id: @notum
    end

    assert_redirected_to nota_path
  end
end
