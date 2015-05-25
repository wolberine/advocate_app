class Advocate < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :teachers , :class_name => "Teacher", :foreign_key => "advocate_id"
  has_many :schools , :class_name => "School", :foreign_key => "advocate_id"
end
