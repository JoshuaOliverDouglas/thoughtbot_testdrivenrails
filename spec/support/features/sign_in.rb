module Features
  def sign_in
    visit root_path
    fill_in "Email", with: "person@example.com"
    click_on "Sign in"
    #todo contorller redirects to sign in/sign up and fill out info, sign in and when i go to todos page it should work
  end
end
