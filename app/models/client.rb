class Client < ActiveRecord::Base
	
	validates :nome, presence: true
  has_many :sinsters
end
