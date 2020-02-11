class Article < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :title, :uniqueness => { :case_sensitive => true }

  validates :title, :presence => true

  validates :title, :length => { :minimum => 2, :maximum => 200 }

end
