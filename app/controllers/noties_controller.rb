class NotiesController < ApplicationController
  
  def user_notification
    list_notification = Noty.where(user_id: params[:id])
    if !list_notification.nil?
      render json: { status: 'Notifications', data: list_notification }
    else
      render json: { status: 'No notifications'}
    end
  end

  def show
    notification = Noty.find(params[:id])
    if !notification.nil?
      render json: { status: 'Available', data: notification }
    else
      render json: { status: 'Not available'}
    end
  end

  def create
    noty = Noty.new(news_params)
    if noty.save
      render json: { status: 'SUCCESS', message: 'loaded the post', data: noty }
    else
      render json: { status: 'ERROR', message: 'post not saved', data: noty.errors }
    end
  end

  def destroy
    notification = Noty.find(params[:id])
    if !notification.nil?
      notification.destroy
      render json: { status: 'SUCCESS'}
    else
      render json: { status: 'ERROR'}
    end
  end

  private

  def news_params
    # whitelist params
    params.require(:notification).permit(:user_id, :notification_body, :notification_type)
  end
end
