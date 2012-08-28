class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :fname, :lname, :fullname, :shortbio, :weburl
  
  has_many :services, :dependent => :destroy
  has_many :articles, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :ratings, :dependent => :destroy
  
  belongs_to :country
  
  
  validates :fullname, :length => {:maximum => 40}
  validates :shortbio, :length => {:maximum => 500}
end
