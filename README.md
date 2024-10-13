# Image Upload App

Image Upload App is a Ruby on Rails application that allows users to upload images directly to an AWS S3 bucket. The app provides a simple and intuitive interface for uploading images and viewing all uploaded content.

## Table of Contents
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [License](#license)

## Technologies Used

- Ruby on Rails
- AWS S3

## Getting Started

### Prerequisites
- Ruby
- Rails
- Bundler
- AWS Account (for S3)

### Installation
1. Clone the repository:

  ```bash
  git clone https://github.com/BubeeKilla/img_upload_app.git
  cd img_upload_app
  ```
2. Install dependencies:
  ```bash
  bundle install
  ```
3. Create AWS bucket.

  - You will need to use it's name in the next step.
  - Make it public, uncheck all Block public access.
  - Add Policy in the Policy tab:

  ```json
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
  ```
      
4. Set up environment variables:

  - Create a .env file in the root directory of your project and add your AWS credentials:

  ```.env
  AWS_ACCESS_KEY_ID=your_access_key_id
  AWS_SECRET_ACCESS_KEY=your_secret_access_key
  AWS_REGION=your_region
  AWS_BUCKET_NAME=your_bucket_name
  ``` 
    
5. Start the server:
  ```bash
  rails server
  ```

### Usage

- Visit the homepage.
- Use the form to upload an image.
- Click on the "View Images" link to see all uploaded images.

## License

- This project is licensed under the MIT License - see the LICENSE file for details.
