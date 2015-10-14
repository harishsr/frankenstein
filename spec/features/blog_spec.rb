require 'rails_helper'

RSpec.feature "Blogs", type: :feature do
  context "Creating an entry" do 
    before do 
      visit '/'
      @title = 'Yo, Dracula!'
      @post = 'Vampires suck!'
    end

    it "should be successful" do 
      create_entry(@title, @post)
      expect(page).to have_content(@title)
      expect(page).to have_content(@post)
    end

    it "should properly fail if validations aren't being met" do 
      create_entry("", @post)
      expect(page).to have_content("can't be blank")

      create_entry(@title, "")
      expect(page).to have_content("can't be blank")

      create_entry("hi", @post)
      expect(page).to have_content("is too short")

      create_entry(@title, "hello")
      expect(page).to have_content("is too short")

      create_entry("I"*101, @post)
      expect(page).to have_content("is too long")

      create_entry(@title, "I"*10_001)
      expect(page).to have_content("is too long")

    end
  end

  private

    def create_entry(title = @title, post = @post)
      visit '/'
      click_link "New entry"
      fill_in 'Title', with: title
      fill_in 'Content', with: post
      click_button 'Create Blog'
    end
end
