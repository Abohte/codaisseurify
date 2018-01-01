require 'rails_helper'

feature 'Manage songs', js: true do
  let!(:artist) { create :artist }

  scenario 'add a new song' do
    submit_new_song(1986, 'The Final Countdown')

    expect(page).to have_content('The Final Countdown')
    expect(page).to have_content('1986')
  end

  scenario 'remove a song' do
    submit_new_song(1984, 'Wake Me Up (Before You Go Go)')
    sleep(1)
    page.find_by_id('delete-song').click
    sleep(1)
    page.accept_alert

    expect(page).to have_no_content('Wake Me Up (Before You Go Go)')
    expect(page).to have_no_content('1984')
  end

  scenario 'remove all songs' do
    submit_new_song(1984, 'Wake Me Up (Before You Go Go)')
    submit_new_song(1986, 'The Final Countdown')
    click_link('delete-all-songs')
    sleep(1)
    page.accept_alert

    expect(page).to have_no_content('Wake Me Up (Before You Go Go)')
    expect(page).to have_no_content('1984')
  end

  def submit_new_song(year, title)
    visit artist_path(artist.id)
    fill_in 'song_title', with: title
    fill_in 'song_year', with: year

    page.execute_script("$('form').submit()")
  end
end
