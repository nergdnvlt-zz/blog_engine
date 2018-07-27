require 'rails_helper'

describe 'A user visits the blog index' do
  describe 'when visiting /blogs' do
    it 'shows them all the blogs' do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      blogs = create_list(:blog, 5, user: user)
      visit '/blogs'

      expect(current_path).to eq(blogs_path)

      blogs.each do |blog|
        expect(page).to have_content(blog.body)
        expect(page).to have_content(blog.user.name)
      end
    end
  end
end
