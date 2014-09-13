class PzzLink < ActiveRecord::Base

	# fields
	enum link_visible: [:yes, :no]
	has_attached_file :link_image, :default_url => ""
	before_post_process :skip_for_audio

	# validates
	validates_attachment_content_type :link_image, :content_type => /\Aimage\/.*\Z/

	# relationships


	def skip_for_audio
	   ! %w(audio/ogg application/ogg).include?(link_image_content_type)
	end

end
