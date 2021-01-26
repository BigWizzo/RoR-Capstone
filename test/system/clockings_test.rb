require 'application_system_test_case'

class ClockingsTest < ApplicationSystemTestCase
  setup do
    @clocking = clockings(:one)
  end

  test 'visiting the index' do
    visit clockings_url
    assert_selector 'h1', text: 'Clockings'
  end

  test 'creating a Clocking' do
    visit clockings_url
    click_on 'New Clocking'

    fill_in 'Details', with: @clocking.details
    fill_in 'Duration', with: @clocking.duration
    fill_in 'Topic', with: @clocking.topic
    click_on 'Create Clocking'

    assert_text 'Clocking was successfully created'
    click_on 'Back'
  end

  test 'updating a Clocking' do
    visit clockings_url
    click_on 'Edit', match: :first

    fill_in 'Details', with: @clocking.details
    fill_in 'Duration', with: @clocking.duration
    fill_in 'Topic', with: @clocking.topic
    click_on 'Update Clocking'

    assert_text 'Clocking was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Clocking' do
    visit clockings_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Clocking was successfully destroyed'
  end
end
