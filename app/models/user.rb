class User < ApplicationRecord
  # Direct associations

  has_many   :articles,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :age, :uniqueness => { :message => "Age should be unique" }

  validates :age, :presence => true

  validates :age, :numericality => { :other_than => 27, :greater_than => 21, :less_than_or_equal_to => 40, :odd => true, :only_integer => true }

  validates :first_name, :uniqueness => { :case_sensitive => true, :message => "Name should be unique" }

  validates :first_name, :presence => true

  validates :first_name, :length => { :minimum => 3, :maximum => 20 }

  validates :first_name, :inclusion => { :in => [ 'Ram', 'Lakshmana' ]  }

  validates :first_name, :exclusion => { :in => [ 'Bharat', 'Shatrughna' ]  }

end
