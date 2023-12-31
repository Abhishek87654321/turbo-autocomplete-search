# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Movie < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    scope :filter_by_title, -> (title){ where('title LIKE ?', "%#{title}%")}
       
end
