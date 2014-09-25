require 'rails_helper'

  describe Photo do
    it { should validate_presence_of :name }

  end
