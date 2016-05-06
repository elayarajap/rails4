require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get ajax_call" do
    get :ajax_call
    assert_response :success
  end

end
