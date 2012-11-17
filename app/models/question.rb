class Question < ActiveRecord::Base
  attr_accessible :description
  has_ancestry
end
