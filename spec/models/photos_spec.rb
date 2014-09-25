require 'rails_helper'

  describe Photo do
    it { should validate_presence_of :name }
    it { should validate_presence_of :recipe_id }

  end
