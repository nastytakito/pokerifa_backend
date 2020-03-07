require 'test_helper'

module Api
  module V1
    class UsersControllerTest < ActionDispatch::IntegrationTest

      setup do
        @test_user = {
            user: {
                name: 'Luigi',
                last_name: 'Lombardi',
                email: 'luigi@lombardi.com',
                password: '123456',
                password_confirmation: '123456'
            }
        }
      end

      def index_create_url
        api_v1_users_url
      end

      def body(body = {})
        {
            params: body,
            as: :json
        }
      end

      test "that user creation is correct" do
        post(index_create_url, body(@test_user))

        assert_response :success
      end

      test "that user will have a hashed password" do
        post(index_create_url, body(@test_user))
        assert_not_nil User.find(json_response['user']['id']).authenticate '123456'
      end

      test "that email will not get used twice for an account" do
        @test_user[:user][:email] = 'mario@mtz.com'
        post(index_create_url,body(@test_user))
        assert_response :bad_request
      end

      test "empty last name" do
        @test_user[:user][:last_name] = ''
        post(index_create_url,body(@test_user))
        assert_equal({last_name: ["can't be blank"]}.to_s, json_response['message'])
      end

      test "that created user basic info will be returned after creation" do
        post(index_create_url,body(@test_user))
        assert json_response['user']['id']
        assert_equal @test_user[:user][:name], json_response['user']['name']
        assert_equal @test_user[:user][:last_name], json_response['user']['last_name']
        assert_equal @test_user[:user][:email], json_response['user']['email']
      end

    end
  end
end

