# == Schema Information
#
# Table name: movies
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :text
#  movie_length       :string
#  director           :string
#  rating             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Movie < ActiveRecord::Base


	belongs_to :user

	has_attached_file :image, styles: { medium: "400x600#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
