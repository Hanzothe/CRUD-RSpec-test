require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'before create' do  # (almost) plain English
    it 'name not blank' do 
      author = Author.new(email:'teste@gmail.com', year:1999) 
      expect(author.save).to eq(false)  # test code
    end
    it 'year not blank' do 
      author = Author.new(name:'teste', email:'teste@gmail.com') 
      expect(author.save).to eq(false)  # test code
    end
    
    it 'email not blank' do 
      author = Author.new(name:'teste', year:1999) 
      expect(author.save).to eq(false)  # test code
    end
  end
end
