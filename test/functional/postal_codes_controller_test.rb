require 'test_helper'

class PostalCodesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
