# README

My Image Upload App is a Ruby on Rails application that allows users to upload images directly to an AWS S3 bucket. The app provides a simple and intuitive interface for uploading images and viewing all uploaded content.

## Features

- Upload images to AWS S3
- View all uploaded images
- User-friendly interface

## Technologies Used

- Ruby on Rails
  - ruby -v
      ruby 3.3.5 (2024-09-03 revision ef084cc8f4) [x86_64-linux]
  - rails -v
      Rails 7.2.1
- AWS S3

## Installation

To run this project locally, follow these steps:

1. Clone the repository:
  
  git clone git@github.com:BubeeKilla/img_upload_app.git

2. Change into the project directory:
  
  cd img_upload_app

3. Install the required gems:

  bundle install

  if for some reason you get errors after trying to bundle install, use sudo bundle install, this will give you super user permissions to install all the needed gems and dependencies, and after use sudo chown -R $(whoami) $(gem env gemdir) to restore previous user permission settings. This step with previous user permissions is needed to prevent permission issues in the future by other users.

4. Create AWS bucket.

  You will need to use it's name in the next step.
  Make it public, uncheck all Block public access.
  Add Policy in the Policy tab:

      {
        "Version": "2012-10-17",
        "Statement": [
          {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::my-s3-bucket-1212/*"
          }
        ]
      }

5. Set up environment variables:

  Create a .env file in the root directory of your project and add your AWS credentials:

    - AWS_ACCESS_KEY_ID=your_access_key_id
    - AWS_SECRET_ACCESS_KEY=your_secret_access_key
    - AWS_REGION=your_region
    - AWS_BUCKET_NAME=your_bucket_name

6. Start the server:

  rails server


## Usage

- Visit the homepage.
- Use the form to upload an image.
- Click on the "View Images" link to see all uploaded images.

## License

- This project is licensed under the MIT License - see the LICENSE file for details.
