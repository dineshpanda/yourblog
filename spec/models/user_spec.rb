require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:articles) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:age).scoped_to(:last_name).with_message('Age should be unique') }

    it { should validate_presence_of(:age).with_message('Age should be present') }

    it { should validate_numericality_of(:age).is_less_than(41).to be != 27.is_greater_than(21).is_less_than(40).is_greater_than_or_equal_to(22).even.only_integer }

    it { should validate_length_of(:age).is_at_least(2).is_at_most(2) }

    it { should validate_inclusion_of(:age).in_array([ '22', '24', '26', '28' ]) }

    it { should validate_exclusion_of(:age).in_array([ '30', '32', '34' ]) }

    it { should validate_uniqueness_of(:first_name).scoped_to(:last_name).case_insensitive.with_message('Name should be unique for each last name') }

    it { should validate_presence_of(:first_name) }

    it { should validate_length_of(:first_name).is_at_least(3).is_at_most(20) }

    it { should validate_inclusion_of(:first_name).in_array([ 'Ram', 'Lakshmana' ]) }

    it { should validate_exclusion_of(:first_name).in_array([ 'Bharat', 'Shatrughna' ]) }

    it { should validate_uniqueness_of(:last_name).case_insensitive }

    it { should validate_presence_of(:last_name).with_message('Last name should be present') }
      
    end
end
