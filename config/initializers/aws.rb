require 'aws-sdk-s3'  # v1: require 'aws-sdk'

Aws.config.update({
  region: ENV['AWS_REGION'],  # e.g., 'eu-central-1'
  credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET'])
