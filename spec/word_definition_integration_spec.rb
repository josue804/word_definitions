require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word and definitions process', {:type => :feature}) do
  it("displays the index page correctly") do
    visit('/')
    expect(page).to have_content("Definition Dojo")
  end

  it("displays input page correctly") do
    visit('/')
    click_link('Add a Word')
    expect(page). to have_content("Word")
  end
end
