require 'rails_helper'

  describe Recipe do
    it { should validate_presence_of :name }
    it { should validate_presence_of :ingredients }
    it { should validate_presence_of :instructions }

    it { should belong_to :user }
    it { should have_many :tags }
    it { should have_many :favorites }
    it { should have_many :photos }
  end
