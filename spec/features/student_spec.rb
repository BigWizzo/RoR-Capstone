require 'rails_helper'

RSpec.describe 'Student Sign up/in' do
  it 'Signs up a new student and redirects to the Home page' do
    visit 'students/sign_up'
    fill_in 'student[username]', with: 'myname'
    fill_in 'student[email]', with: 'myname@email.com'
    fill_in 'student[password]', with: 'mypassword'
    fill_in 'student[password_confirmation]', with: 'mypassword'
    click_on 'commit'
    expect(current_path).to eql(root_path)
    expect(page).to have_text('Welcome! You have signed up successfully.')
  end

  it 'Fails to Sign up a student if name is not given' do
    visit 'students/sign_up'
    fill_in 'student[username]', with: 'ab'
    fill_in 'student[email]', with: 'myname@email.com'
    fill_in 'student[password]', with: 'mypassword'
    fill_in 'student[password_confirmation]', with: 'mypassword'
    click_on 'commit'
<<<<<<< HEAD
    expect(page).to have_text("Username is too short")
=======
    expect(page).to have_text('Username is too short')
>>>>>>> main
  end

  it 'Fails to Sign up a student if username is too given' do
    visit 'students/sign_up'
    fill_in 'student[email]', with: 'myname@email.com'
    fill_in 'student[password]', with: 'mypassword'
    fill_in 'student[password_confirmation]', with: 'mypassword'
    click_on 'commit'
    expect(page).to have_text("Username can't be blank")
  end

  it 'Signs in a new student and redirects to the Home page' do
    Student.create(username: 'myname', email: 'myname@email.com', password: 'mypassword',
<<<<<<< HEAD
                password_confirmation: 'mypassword')
=======
                   password_confirmation: 'mypassword')
>>>>>>> main

    visit 'students/sign_in'
    fill_in 'student[username]', with: 'myname'
    fill_in 'student[password]', with: 'mypassword'
    click_on 'commit'
    expect(current_path).to eql(root_path)
    expect(page).to have_text('Signed in successfully.')
  end

  it 'Fails to Sign in a student if email is not given' do
    visit 'students/sign_in'
    fill_in 'student[password]', with: 'password'
    click_on 'commit'
    expect(page).to have_text('Invalid Username or password')
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> main
