class User < ActiveRecord::Base
 validates :name, :length => { :in => 3..140}
 validates :password, :presence => true
 validates :wedding, :presence => true

 belongs_to :wedding
 has_many :pictures
end