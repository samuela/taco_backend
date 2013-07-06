require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option" do
    assert_difference('Option.count') do
      post :create, option: { t10: @option.t10, t11: @option.t11, t12: @option.t12, t13: @option.t13, t14: @option.t14, t15: @option.t15, t16: @option.t16, t17: @option.t17, t18: @option.t18, t19: @option.t19, t1: @option.t1, t20: @option.t20, t21: @option.t21, t22: @option.t22, t23: @option.t23, t24: @option.t24, t25: @option.t25, t26: @option.t26, t27: @option.t27, t28: @option.t28, t29: @option.t29, t2: @option.t2, t30: @option.t30, t3: @option.t3, t4: @option.t4, t5: @option.t5, t6: @option.t6, t7: @option.t7, t8: @option.t8, t9: @option.t9 }
    end

    assert_redirected_to option_path(assigns(:option))
  end

  test "should show option" do
    get :show, id: @option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option
    assert_response :success
  end

  test "should update option" do
    put :update, id: @option, option: { t10: @option.t10, t11: @option.t11, t12: @option.t12, t13: @option.t13, t14: @option.t14, t15: @option.t15, t16: @option.t16, t17: @option.t17, t18: @option.t18, t19: @option.t19, t1: @option.t1, t20: @option.t20, t21: @option.t21, t22: @option.t22, t23: @option.t23, t24: @option.t24, t25: @option.t25, t26: @option.t26, t27: @option.t27, t28: @option.t28, t29: @option.t29, t2: @option.t2, t30: @option.t30, t3: @option.t3, t4: @option.t4, t5: @option.t5, t6: @option.t6, t7: @option.t7, t8: @option.t8, t9: @option.t9 }
    assert_redirected_to option_path(assigns(:option))
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_redirected_to options_path
  end
end
