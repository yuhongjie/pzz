class PzzIdentity < ActiveRecord::Base

	#fields
	enum identity_gender: [:male, :female]
	# male
	# female

	enum identity_dl_status: [:normal, :expired, :canceled]
	# normal 正常
	# expired 过期
	# canceled 注销

	enum identity_status: [:pending, :dl_pending, :confirmed, :dl_confirmed, :both_confirmed]
	# none 
	# pending 实名认证待审核 
	# dl_pending 驾驶认证待审核
	# confirmed  实名认证生效
	# dl_confirmed 驾驶认证生效
	# both_confirmed 双认证

	enum identity_dl_type: [:A, :B, :C]

	has_attached_file :identity_card_image
	has_attached_file :identity_dl_image
	before_post_process :skip_for_audio
	
	# validates
	def skip_for_audio
    	!%w(audio/ogg application/ogg).include?(user_avatar_content_type)
  	end


  	# validates 
	validates_attachment_content_type :identity_card_image, :content_type => /\Aimage\/.*\Z/
	validates_attachment_content_type :identity_dl_image, :content_type => /\Aimage\/.*\Z/


	# relationships
	belongs_to :pzz_user
end
