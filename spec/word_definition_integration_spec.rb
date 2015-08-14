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
    expect(page).to have_content("Word")
  end

  it("displays a newly input word in /words word list") do
    visit('/words/new')
    fill_in('word', :with => "Yoyo")
    click_button('Add')
    expect(page).to have_content("Yoyo")
  end

  it("clicks on a word and displays its definitions, along with the options to add more") do
    visit('/words/new')
    fill_in('word', :with => "mahogany")
    click_link('Mahogany')
    expect(page).to have_content("Mahogany")
  end
end
