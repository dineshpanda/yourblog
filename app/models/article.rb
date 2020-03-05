class Article < ApplicationRecord
  enum loc: {"Delhi"=>0, " Mumbai"=>1, " Karnataka"=>2} 

  enum status: {"active"=>0, " inactive"=>1} 

  # Direct associations

  # Indirect associations

  # Validations

end
