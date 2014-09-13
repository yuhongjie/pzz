class PzzCar < ActiveRecord::Base

	# fields
	# SUV 城市越野车
	# Sports 跑车
	# MPV 多功能用途车
	# MINI 迷你轿车
	# Compact 小型轿车
	# Family 中级轿车
	# Bus 小型客车
	# Luxury 豪华轿车
	enum car_type: [:COMPACT, :FAMILY, :MINI, :LUXURY, :SUV, :MPV, :SPORTS, :BUS]

	# validates

	# relationships
	belongs_to :pzz_user
	has_many :pzz_car_images, dependent: :destroy

end