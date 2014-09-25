require 'rails_helper'

  describe User do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password_digest }

    it { should have_many :recipes }
    it { should have_many :favorites }
    it { should have_many :photos }
  end

