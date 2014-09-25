require 'rails_helper'

  describe Tag do
    it { should validate_presence_of :recipe_id }
    it { should validate_presence_of :type_id }

    it { should belong_to :recipe }
    it { should belong_to :type }
    it { should belong_to :user }
  end
