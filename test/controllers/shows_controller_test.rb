# frozen_string_literal: true

require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test '#create adds show to database' do
    assert_difference('Show.count', 1) do
      post shows_url, params: { show: show_info }
    end
  end

  test '#create does not add the same show twice' do
    create(:show, tvmaze: 29)
    assert_difference('Show.count', 0) do
      post shows_url, params: { show: show_info }
    end
  end

  test '#index shows all the shows added' do
    create_list(:show, 5)
    get shows_url, xhr: true

    assert_equal 5, assigns[:shows].count
    assert_response :success
  end
end
