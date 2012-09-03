class User < ActiveRecord::Base
has_many :requests
has_many :departments
has_many :posts
has_many :comments
belongs_to :roles
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :login, :presence => true,
		  :length => { :maximum => 50 },
		  :uniqueness => true
validates :email, :presence => true,
		  :format => { :with => email_regex },
		  :uniqueness => { :case_sensitive => false }
has_secure_password
end
