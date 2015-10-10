require 'rails_helper'

RSpec.feature "Blogs", type: :feature do
  context "Creating an entry" do 
    
    setup do 
      visit '/'
      @title = 'Yo, Dracula!'
      @entry = 'Vampires suck! (get it?)'
    end

    it "should be successful" do 
      click_link 'New entry'
      fill_in 'Title', with: @title
      fill_in 'Entry', with: @entry
      click_button 'Submit'

      expect(page).to have_content(@title)
      expect(page).to have_content(@entry)
    end

    it "should properly fail if validations aren't being met" do 
    end

    it "should allow the entry of an image" do 
    end
  end
end
