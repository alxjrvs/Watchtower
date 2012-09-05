class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  #Devise End

  has_many :items
  has_many :books
  attr_accessible :name, :admin
  validates :email, :format => { :with => /\S+@spandexless.com/, :message => "Must be from Spandexless."}
end
