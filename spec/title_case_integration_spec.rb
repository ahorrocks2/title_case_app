require('capybara/rspec')
require('./app')
(Capybara.app = Sinatra::Application)
set(:show_exceptions, false)

describe('title_case_again', {:type => :feature}) do
  it('Takes the entry and returns it in title case') do
    visit('/')
    fill_in('title', :with => 'the cat in the hat')
    click_button('Send')
    expect(page).to have_content('The Cat in the Hat')
  end
end
