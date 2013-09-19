class Article < ActiveRecord::Base
	validates_presence_of :title, :content

	belongs_to :category

	scope :alphabetical, order('title')
  	scope :active, where('active = ?', true)
end
