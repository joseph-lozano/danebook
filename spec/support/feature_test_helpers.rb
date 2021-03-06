module FeatureTestHelpers

  def feature_sign_in(user)
    visit root_path
    within('nav') do
      fill_in "Email", with: user.email
      fill_in "Password",  with: user.password
      click_button "Sign In"
    end
  end
end