require 'rails_helper'

RSpec.describe 'Subject' do
  before :each do
    Student.create(username: 'myname', email: 'myname@email.com', password: 'mypassword',
<<<<<<< HEAD
                password_confirmation: 'mypassword')
=======
                   password_confirmation: 'mypassword')
>>>>>>> main
    visit student_session_path
    fill_in 'student[username]', with: 'myname'
    fill_in 'student[password]', with: 'mypassword'
    click_on 'commit'
  end

  it 'Create a subject for the signed in student' do
    visit new_subject_path
    fill_in 'subject[title]', with: 'Subject title'
    fill_in 'subject[description]', with: 'Subject description'
    click_on 'commit'
    expect(page).to have_text('Subject was successfully created.')
  end

  it 'Fail to create subject if title is blank' do
    visit new_subject_path
    fill_in 'subject[title]', with: ''
    click_on 'commit'
    expect(page).to have_text("Title can't be blank")
  end

  it 'Fail to create subject if title is too short' do
    visit new_subject_path
    fill_in 'subject[title]', with: ''
    click_on 'commit'
<<<<<<< HEAD
    expect(page).to have_text("Title is too short")
=======
    expect(page).to have_text('Title is too short')
>>>>>>> main
  end
end
