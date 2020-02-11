require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:articles) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:age).with_message('Age should be unique') }

    it { should validate_presence_of(:age) }

    it { should validate_numericality_of(:age).to be != 27.is_greater_than(21).is_less_than(40).odd }

    it { should validate_uniqueness_of(:first_name).case_insensitive.with_message('Name should be unique') }

    it { should validate_presence_of(:first_name) }

    it { should validate_length_of(:first_name).is_at_least(3).is_at_most(20) }

    it { should validate_inclusion_of(:first_name).in_array([ 'Ram', 'Lakshmana' ]) }

    it { should validate_exclusion_of(:first_name).in_array([ 'Bharat', 'Shatrughna' ]) }
      
    end
end
