require 'test_helper'

class ClockingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clocking = clockings(:one)
  end

  test "should get index" do
    get clockings_url
    assert_response :success
  end

  test "should get new" do
    get new_clocking_url
    assert_response :success
  end

  test "should create clocking" do
    assert_difference('Clocking.count') do
      post clockings_url, params: { clocking: { details: @clocking.details, duration: @clocking.duration, topic: @clocking.topic } }
    end

    assert_redirected_to clocking_url(Clocking.last)
  end

  test "should show clocking" do
    get clocking_url(@clocking)
    assert_response :success
  end

  test "should get edit" do
    get edit_clocking_url(@clocking)
    assert_response :success
  end

  test "should update clocking" do
    patch clocking_url(@clocking), params: { clocking: { details: @clocking.details, duration: @clocking.duration, topic: @clocking.topic } }
    assert_redirected_to clocking_url(@clocking)
  end

  test "should destroy clocking" do
    assert_difference('Clocking.count', -1) do
      delete clocking_url(@clocking)
    end

    assert_redirected_to clockings_url
  end
end
