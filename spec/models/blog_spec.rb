require 'rails_helper'

describe Blog do
  describe 'Validations' do
    it {should validate_presence_of :body}
    it {should belong_to :user}
  end
end
