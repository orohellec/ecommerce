class User < ApplicationRecord
  has_one :cart
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_user_mail
  def send_user_mail
    UserMailer.welcome_mailer(self).deliver
  end

end



