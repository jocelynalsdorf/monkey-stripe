class Monkey < ActiveRecord::Base 


 	has_attached_file :image, styles: { medium: "400X300#", small: "200x200#", thumb: "150x150#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end