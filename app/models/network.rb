class Network < ActiveRecord::Base
  belongs_to :advocate
  has_many :schools , :class_name => "School", :foreign_key => "network_id"
end
