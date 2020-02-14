require 'rails_helper'

RSpec.describe Article, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:title).case_insensitive }

    it { should validate_presence_of(:title) }

    it { should validate_length_of(:title).is_at_least(2).is_at_most(200) }

    end
end
