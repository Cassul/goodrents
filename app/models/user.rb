class User < ApplicationRecord
  # has_many:reviews
  # has_many:messages
  # has_many:comments
  has_secure_password
end
