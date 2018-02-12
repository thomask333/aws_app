class User < ApplicationRecord 
	mount_uploader :avatar, AvatarUploader
	has_one :team
end
