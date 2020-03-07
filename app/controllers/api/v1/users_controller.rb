module Api
  module V1
    class UsersController < ApplicationController

      def create
        @user = User.new(user_params)
        @user.save!
      end

      private

      def user_params
        params.require(:user).permit(:name,
                                     :last_name,
                                     :email,
                                     :password,
                                     :password_confirmation
        )
      end

    end
  end
end