require 'rails_helper'

  describe Recipe do
    it { should validate_presence_of :name }
    it { should validate_presence_of :ingredients }
    it { should validate_presence_of :instructions }

  end
