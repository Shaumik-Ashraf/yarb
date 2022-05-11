class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :rememberable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :lockable
         # TODO add confirmable, omniauthable

end
