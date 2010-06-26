require 'digest'
class User < ActiveRecord::Base

  attr_accessor :password
  attr_accessible  :name , :email , :password , :password_confirmation


  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #Validations 
  validates_presence_of :name , :email
  validates_length_of :name , :maximum => 40
  validates_format_of :email , :with => EmailRegex 
  validates_uniqueness_of :email , :case_sensitive => false
   
  validates_presence_of :password
  validates_confirmation_of :password
  validates_length_of :password , :within => 6..20
  
  before_save :encrypt_password
  
  def remember_me!
    self.remember_token = encrypt("#{salt}--#{id}")
  end  
  
  def self.authenticate(email , submitted_password)
    user = self.find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end
  
  def has_password?(submitted_password)
    self.encrypted_password == encrypt(submitted_password)
  end     
  
  
  
  
private 

  def encrypt_password
    unless password.nil?
      self.salt = make_salt
      self.encrypted_password = encrypt(password)
    end
  end
  
  def secure_hash(token)
    Digest::SHA2.hexdigest(token)
  end     

  def make_salt
    secure_hash("#{Time.now.utc}#{password}")
  end
  
  def encrypt(token)
    secure_hash("#{salt}#{token}")
  end    

end
