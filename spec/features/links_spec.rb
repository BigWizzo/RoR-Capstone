require 'rails_helper'

RSpec.describe 'Test navigation links' do
  before :each do
    Student.create(username: 'myname', email: 'myname@email.com', password: 'mypassword',
                   password_confirmation: 'mypassword')
    visit student_session_path
    fill_in 'student[username]', with: 'myname'
    fill_in 'student[password]', with: 'mypassword'
    click_on 'commit'
  end

  it 'Send student to the All Clockings page' do
    visit root_path
    first('.all').click
    expect(current_path).to eql(all_path)
    expect(page).to have_text('SUBJECT CLOCKINGS')
  end

  it 'Send student to the External Clockings page' do
    visit root_path
    first('.external').click
    expect(current_path).to eql(external_path)
    expect(page).to have_text('EXTERNAL CLOCKINGS')
  end

  it 'Send student to the All Subjects page' do
    visit root_path
    first('.subjects').click
    expect(current_path).to eql(subjects_path)
    expect(page).to have_text('ALL SUBJECTS')
  end

  it 'Send student to the New Subject form page' do
    visit root_path
    first('.new-sub').click
    expect(current_path).to eql(new_subject_path)
    expect(page).to have_text('New Subject')
  end

  it 'Send student to the All Subjects page' do
    visit root_path
    first('.new-clock').click
    expect(current_path).to eql(new_clocking_path)
    expect(page).to have_text('SELECT SUBJECT')
  end
end
