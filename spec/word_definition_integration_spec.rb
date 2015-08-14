require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word and definitions process', {:type => :feature}) do
  it("displays the index page correctly") do
    visit('/')
    expect(page).to have_content("Vocabulary Dojo")
  end
end
