require 'test_helper'

class RegisterControllerTest < ActionController::TestCase
  test "should get registrar" do
    get :registrar
    assert_response :success
  end

end
