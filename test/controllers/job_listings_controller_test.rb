require 'test_helper'

class JobListingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_listings_index_url
    assert_response :success
  end

  test "should get new" do
    get job_listings_new_url
    assert_response :success
  end

end
