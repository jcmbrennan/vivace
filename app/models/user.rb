class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


	validates_presence_of :name


	def first_name
	self.name.split.first
	end


	def last_name
	self.name.split.last
	end  


	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
	end

	has_many:orders

end
