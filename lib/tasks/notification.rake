namespace :notification do
  desc "Send a test push notification"
  task send_test: :environment do
    device_tokens = ["d0uAhfVVRC-AKkgL6SsNYv:APA91bFTygTj7bITNMzLQlNjlPk2TK8dXfChv2LNKPYCFsupV8VffK1F1SOxgkU2zJ-m0paNh0N0KdFvKQcZRLazJ_VPz20AIeZ2B5YW-o3NK1ij81Z2-1OrOZpJde6N8O-tddM6YJrm"]
    title = "Hello World"
    message = "This is working"

    options = {
      token: "d0uAhfVVRC-AKkgL6SsNYv:APA91bFTygTj7bITNMzLQlNjlPk2TK8dXfChv2LNKPYCFsupV8VffK1F1SOxgkU2zJ-m0paNh0N0KdFvKQcZRLazJ_VPz20AIeZ2B5YW-o3NK1ij81Z2-1OrOZpJde6N8O-tddM6YJrm",
      notification: {
        title: title,
        body: message,
      },
    }

    response = FCM_CLIENT.send_v1(options)
    puts response
  end
end
