class PzzTraffic < ActiveRecord::Base

	# fields
	enum traffic_keywords: [:smooth, :slow, :jam]
	# smooth 畅通
	# slow 缓行
	# jam 拥堵
	has_attached_file :traffic_image, :default_url => ""
  	before_post_process :skip_for_audio
  
	def skip_for_audio
	   ! %w(audio/ogg application/ogg).include?(traffic_image_content_type)
	end


	# validates 
	validates_attachment_content_type :traffic_image, :content_type => /\Aimage\/.*\Z/


	# relationships
	belongs_to :pzz_user

end
