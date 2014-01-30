require 'spec_helper'

describe "Pages" do
  subject { page }
  describe "Home pages" do
    before { visit root_path }
	it { should have_content('stats and ratings') }
    it { should have_title('Who Are Better?') } 
  end
  describe "id page" do
    before { visit id_path }
	it { should have_content('stats') }
    it { should have_title('Who Are Better?') } 
  end
  describe "Signup page" do
    before { visit signup_path }
	it { should have_content('Sign up') }
    it { should have_title('Who Are Better?') } 
  end
end
