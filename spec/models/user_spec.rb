require 'rails_helper'

describe User do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :username }
    it {should have_many :blogs}
  end
end
