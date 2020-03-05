class Article < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :content, :format => { :with => /[^abc]/, :message => "please exclude abc" }

  validates :subtitle, :format => { :without => /[^A-Z]/, :message => "do not include caps" }

  validates :title, :format => { :with => /[A-Z0-9a-z]/, :message => "do not include special characters" }

end
