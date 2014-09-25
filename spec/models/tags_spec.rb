require 'rails_helper'

  describe Tag do
    it { should validate_presence_of :recipe_id }
    it { should validate_presence_of :type_id }
  end
