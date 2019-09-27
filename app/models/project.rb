class Project < ApplicationRecord
  has_many :assignments
  has_many :people, through: :assignments
end
