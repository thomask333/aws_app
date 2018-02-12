CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key     => "#{ENV['AWS_ACCESS_KEY_ID']}",
    :aws_secret_key => "#{ENV['AWS_SECRET_KEY']}",
    :s3_region                => "#{ENV['S3_REGION']}",
    :path_style            => true
  }

  config.fog_directory =  "#{ENV['S3_BUCKET_NAME']}"
  config.cache_dir     = "#{Rails.root}/tmp/uploads"   # For Heroku
end