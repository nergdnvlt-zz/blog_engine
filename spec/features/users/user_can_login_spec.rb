require 'rails_helper'

describe 'User can login' do
  describe 'when a user visits the root page' do
    it 'and enters their username and clicks login' do
      user1 = create(:user)

      visit '/'

      click_on 'Login'

      fill_in 'Username', with: user1.username
      click_on 'Login'

      expect(page).to have_content(user1.name)
    end
  end
end
