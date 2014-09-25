require 'rails_helper'

  describe Favorite do
    it { should validate_presence_of :recipe_id }
    it { should validate_presence_of :user_id }

    it { should belong_to :user }
    it { should belong_to :recipe }
  end
