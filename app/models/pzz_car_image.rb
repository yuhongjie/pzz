class PzzCarImage < ActiveRecord::Base
	
	# fields
	has_attached_file :car_image, 
		:styles => {:medium => "640x640>", :thumb => "160x160>" },
		:convert_options => {
		  	:medium => "-strip -interlace Plane -quality 85%",
		  	:thumb => "-strip -interlace Plane -quality 85%"
		},
 		:processors => [:thumbnail, :compression]
		#not set path for every user
		before_create :randomize_file_name  
		# skip for audio
		before_post_process :skip_for_audio
      
	
	private  
	def randomize_file_name  
	    #archives 就是你在 has_attached_file :archives 使用的名字  
	    extension = File.extname(car_image_file_name).downcase  
	   	#你可以改成你想要的文件名，把下面这个方法的第二个参数随便改了就可以了。  
	    self.car_image.instance_write(:file_name, "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")  
	end  

	def skip_for_audio
		! %w(audio/ogg application/ogg).include?(car_image_content_type)
	end

	# validate
	validates_attachment_content_type 	:car_image, 	   :content_type => /\Aimage\/.*\Z/

	# relationships 
	belongs_to :pzz_car

	public
	def make_image(name)
		#Dir.tmpdir
		file = File.join("#{name}")
		io = File.new(file)
		self.car_image = io
	end

end
