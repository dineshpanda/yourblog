class User < ApplicationRecord
  # Direct associations

  has_many   :articles,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :age, :uniqueness => { :scope => [:last_name], :message => "Age should be unique" }

  validates :age, :presence => { :message => "Age should be present" }

  validates :age, :numericality => { :less_than => 41, :other_than => 27, :greater_than => 21, :less_than_or_equal_to => 40, :greater_than_or_equal_to => 22, :even => true, :only_integer => true }

  validates :age, :length => { :minimum => 2, :maximum => 2 }

  validates :age, :inclusion => { :in => [ '22', '24', '26', '28' ]  }

  validates :age, :exclusion => { :in => [ '30', '32', '34' ]  }

  validates :first_name, :uniqueness => { :scope => [:last_name], :case_sensitive => true, :message => "Name should be unique for each last name" }

  validates :first_name, :presence => true

  validates :first_name, :length => { :minimum => 3, :maximum => 20 }

  validates :first_name, :inclusion => { :in => [ 'Ram', 'Lakshmana' ]  }

  validates :first_name, :exclusion => { :in => [ 'Bharat', 'Shatrughna' ]  }

  validates :last_name, :uniqueness => { :case_sensitive => true }

  validates :last_name, :presence => { :message => "Last name should be present" }

end
