class GuideItem < ActiveRecord::Base
  attr_accessible :author, :title, :tag_list
  acts_as_taggable

  has_many :questions
end
