Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '528736983809586', 'ff38189c1bef4611b197b783b6f08122', scope: "email, publish_stream, user_birthday"
end
