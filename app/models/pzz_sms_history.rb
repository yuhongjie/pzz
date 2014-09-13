class PzzSmsHistory < ActiveRecord::Base

	# version trail	
	has_paper_trail

	# fields
	enum sms_status: [:pending, :success, :failed]
	# pending 等待发送
	# success 发送成功
	# failed 发送失败

	# validates


	# relationships
	belongs_to :pzz_user
	has_one :pzz_template

end
