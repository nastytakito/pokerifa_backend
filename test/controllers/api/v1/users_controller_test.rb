require 'test_helper'

module Api
  module V1
    class UsersControllerTest < ActionDispatch::IntegrationTest

      setup do
        @test_user = {
            name: 'Luigi',
            last_name: 'Lombardi',
            email: 'luigi@lombardi.com',
            password: '123456'
        }
      end

      test "that user creation is correct" do
        post(api_v1_users_controller_url, {
            params: @test_user
        }, as: :json)

        assert_response :success
      end

    end
  end
end

