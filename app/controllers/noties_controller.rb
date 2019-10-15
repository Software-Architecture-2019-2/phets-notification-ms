class NotiesController < ApplicationController
  
  def user_notification
    list_notification = Noty.where(user_id: params[:id])
    if !list_notification.nil?
      render json: list_notification
    else
      render json: 'No exists'
    end
  end

  def show
    notification = Noty.find(params[:id])
    if !notification.nil?
      render json: notification 
    else
      render json: {data: 'Not available'}
    end
  end

  def create
    noty = Noty.new(news_params)
    if noty.save
      noty.update(notification_id: noty.id, notification_state: 0)
      render json: noty 
    else
      render json: noty.errors
    end
  end

  def update_state
    noty = Noty.find(params[:id])
    if !noty.nil?
      noty.update(notification_state: 1)
      render json: noty
    else
      render json: noty.errors
    end
  end

  def destroy
    notification = Noty.find(params[:id])
    if !notification.nil?
      notification.destroy
      render json: {"data": "Deleted successfully"}
    else
      render json: {"data": "Not exists"}
    end
  end

  private

  def news_params
    # whitelist params
    params.require(:notification).permit(:user_id, :notification_body, :notification_type)
  end
end
