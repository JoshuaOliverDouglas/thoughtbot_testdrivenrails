module Features
  def sign_in
   sign_in_as "person@example.com"
    #todo contorller redirects to sign in/sign up and fill out info, sign in and when i go to todos page it should work
  end

  def sign_in_as(email)
    visit root_path
    fill_in "Email", with: email
    click_on "Sign in"
   end
end
