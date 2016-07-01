require 'test_helper'

class SitioControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get localizacion" do
    get :localizacion
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
