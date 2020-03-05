class Comment < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :desc, :uniqueness => true

  validates :desc, :presence => true

  validates :price, :uniqueness => { :scope => [:article_id], :case_sensitive => true }

end
