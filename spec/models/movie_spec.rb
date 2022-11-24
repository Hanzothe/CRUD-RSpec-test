require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'before create' do  # (almost) plain English
    it 'title not blank' do 
      movie = Movie.new(year:1999) 
      expect(movie.save).to eq(false)  # test code
    end
    it 'year not blank' do 
      movie = Movie.new(title:'teste') 
      expect(movie.save).to eq(false)  # test code
    end
  end
end

