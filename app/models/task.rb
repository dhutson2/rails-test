class Task < ActiveRecord::Base
  belongs_to :list
  attr_accessible :complete, :name, :dueby

  validates :name, presence: true
end
