require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get perfil" do
    get :perfil
    assert_response :success
  end

end
