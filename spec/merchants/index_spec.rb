require "rails_helper"

RSpec.describe "merchants index page", type: :feature do
  it "displays a list of merchants name and the name are links to their show page" do
    visit merchants_path

    expect(page).to have_content("Merchants")
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Koepp LLC")
    expect(page).to have_link("Glover Inc")
  end
end