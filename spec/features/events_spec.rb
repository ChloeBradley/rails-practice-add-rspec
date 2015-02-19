require 'rails_helper'

feature 'Events' do
 it 'Creates new event' do
   visit root_path
   click_on 'New Event'
end

 it 'should be able to create event' do
  visit root_path
  click_on 'New Event'
  fill_in 'Description', with: 'Description'
  fill_in 'Location', with: 'Location'
  fill_in 'Date', with: 'Date'
  fill_in 'Capacity', with: 'Capacity'
  check 'Requires ID'
  click_on 'Create Event'

end

  it 'should show an individual event' do
  Event.create!(description:'School', location:'pearl street', capacity: '120', date:'02/27/2015',requires_id: 'yes')
  visit root_path
  click_on 'School'
  click_on 'Show all events'

end

  it 'edits the event' do
    Event.create!(description:'School')
    visit root_path
    click_on 'edit'
    fill_in 'Description', with: 'Description'
    fill_in 'Location', with: 'Location'
    fill_in 'Date', with: 'Date'
    fill_in 'Capacity', with: 'Capacity'
    check 'Requires ID'
    click_on 'Update Event'

  end

  it 'deletes the event' do
    Event.create!(description:'School')
    visit root_path
    save_and_open_page
    click_on 'delete'
  end

end
