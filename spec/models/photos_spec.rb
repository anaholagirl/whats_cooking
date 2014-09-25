require 'rails_helper'

  describe Photo do
    it { should validate_presence_of :name }
    it { should validate_presence_of :recipe_id }
    it { should validate_presence_of :user_id }

    it { should belong_to :user }
  end
