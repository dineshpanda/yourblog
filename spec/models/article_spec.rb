require 'rails_helper'

RSpec.describe Article, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_format_of(:content).:with => /[^abc]/.with_message('please exclude abc') }

    it { should validate_format_of(:subtitle).:without => /[^A-Z]/.with_message('do not include caps') }

    it { should validate_format_of(:title).:with => /[A-Z0-9a-z]/.with_message('do not include special characters') }
      
    end
end
