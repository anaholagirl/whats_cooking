require 'rails_helper'

  describe Group do
    it { should validate_presence_of :name }

    it { should have_many :tags }
  end
