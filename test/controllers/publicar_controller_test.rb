require 'test_helper'

class PublicarControllerTest < ActionController::TestCase
  test "should get publicar_favor" do
    get :publicar_favor
    assert_response :success
  end

end
