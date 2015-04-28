require 'test_helper'

class GhostsControllerTest < ActionController::TestCase
  test 'should get status' do
    get :status
    assert_response :success
  end
end
