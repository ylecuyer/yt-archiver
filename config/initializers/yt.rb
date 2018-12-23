Yt.configure do |config|
  youtube_config = Rails.application.config_for('youtube')
  config.client_id = youtube_config['app_id']
  config.client_secret = youtube_config['app_secret']
end
