require 'rails_helper'

RSpec.describe Comment, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:desc) }

    it { should validate_presence_of(:desc) }

    it { should validate_uniqueness_of(:price).scoped_to(:article_id).case_insensitive }
      
    end
end
