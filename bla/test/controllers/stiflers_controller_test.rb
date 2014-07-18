require 'test_helper'

class StiflersControllerTest < ActionController::TestCase
  setup do
    @stifler = stiflers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stiflers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stifler" do
    assert_difference('Stifler.count') do
      post :create, stifler: { cor: @stifler.cor, nome: @stifler.nome, numero: @stifler.numero }
    end

    assert_redirected_to stifler_path(assigns(:stifler))
  end

  test "should show stifler" do
    get :show, id: @stifler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stifler
    assert_response :success
  end

  test "should update stifler" do
    patch :update, id: @stifler, stifler: { cor: @stifler.cor, nome: @stifler.nome, numero: @stifler.numero }
    assert_redirected_to stifler_path(assigns(:stifler))
  end

  test "should destroy stifler" do
    assert_difference('Stifler.count', -1) do
      delete :destroy, id: @stifler
    end

    assert_redirected_to stiflers_path
  end
end
