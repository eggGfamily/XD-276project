class User < ApplicationRecord
    #has_many :restaurants, dependent: :destroy 
    #accepts_nested_attributes_for :tokimons
    
    validates :name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false}
	#after_initialize :init_config		
end


