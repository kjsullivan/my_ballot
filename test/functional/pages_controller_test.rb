require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get createballot" do
    get :createballot
    assert_response :success
  end

  test "should get ballot" do
    get :ballot
    assert_response :success
  end

  test "should get candidatebio" do
    get :candidatebio
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
