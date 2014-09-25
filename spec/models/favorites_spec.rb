require 'rails_helper'

  describe Favorite do
    it { should validate_presence_of :recipe_id }
  end
