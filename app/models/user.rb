# == Schema Information
# Schema version: 20110519204434
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email
  attr_accessor :password
  validates :name, :presence=>true,:length=> {:maximum =>50}
  validates :email, :presence=>true, :uniqueness =>{:case_sensitive => false}
  validates :password, :presence =>true, :confirmation =>true, :length =>{:within => 6..40}
  
  before_save :encrypt_password
  
  
  def encrypt_password
      self.encrypted_password=encrypt(password)
  end
 
  def encrypt
    secure_hash(password)
  end
 end
                    
