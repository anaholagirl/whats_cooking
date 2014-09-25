require 'rails_helper'

  describe Tag do
    it { should validate_presence_of :recipe_id }
  end
