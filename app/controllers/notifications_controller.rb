class NotificationsController < ApplicationController
  def send_notificaiton
    device_tokens = params[:device_tokens]
    title = params[:title] || "Push Notification Title"
    message = params[:message] || "Push Notification Message"

    options = {
      notification: {
        title: title,
        body: message,
      },
      priority: "high",
    }

    response = FCM_CLIENT.send(device_tokens, options)
    render json: { response: response }
  rescue => e
    render json: { error: e.message }, status: :bad_request
  end
end
