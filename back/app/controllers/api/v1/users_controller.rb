class Api::V1::UsersController < ApplicationController
  def create
    user = User.find_by(provider: params[:provider], uid: params[:uid])

    if user.nil?
      user = User.create(provider: params[:provider], uid: params[:uid], name: params[:name], email: params[:email])
      unless user.valid?
        render json: { error: 'ログインに失敗しました' }, status: :unprocessable_entity
        return
      end
    end
    head :ok
  rescue StandardError => e
    render json: { error: e.message }, status: :internal_server_error
  end
end
