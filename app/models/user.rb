class User < ActiveRecord::Base
	 validates :name, :length => { :in => 3..140}
	 validates :password, :presence => true
	 validates :wedding, :presence => true

	 belongs_to :wedding
	 has_many :pictures

	 has_secure_password()

	 #define the class method Authenticate

	 def self.authenticate(email,password)
	 	#find user
	 	user =User.find_by_name(name)
	 	#check pass
	 	#user.try(:authenticate,password)
	 	return false unless user
	 	user.authenticate(password)
	 end

end