class User < ActiveRecord::Base
  # attr_accessible :name, :password
  # attr_accessor :name, :password
  # attr_accessor :password, :password_confirmation
  validates :name, presence: true, uniqueness: true

  has_secure_password
  # attr_reader :password
  # attr_accessible :password # ...
  # validates_confirmation_of :password
  # validates_presence_of :password, on: :create
  # validates_presence_of :password_confirmation, on: :create
  # include ActiveModel::SecurePassword::InstanceMethodsOnActivation


  # attr_accessor :name, :password, :password_confirmation
  # attr_accessor :name, :password, :password_digest
end
