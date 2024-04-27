class FCMClient < FCM
  def initialize
    super(ENV.fetch("FCM_API_TOKEN", nil), credentials_file_path, ENV.fetch("FCM_PROJECT_ID", nil))
  end

  private

  def credentials_file_path
    res = StringIO.new(Base64.decode64(ENV.fetch("FCM_CREDENTIALS_FILE_BASE64", nil)))
  end
end

FCM_CLIENT = FCMClient.new
