require 'rails_helper'

RSpec.describe "Homepage", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "shows the banner title" do
    visit root_path
    expect(page).to have_content("Un problème d'ordinateur, de smartphone ou d'imprimante ?")
  end
end
