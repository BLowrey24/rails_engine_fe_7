require "rails_helper"

RSpec.describe "merchant show page", type: :feature do
  it "displays a list of merchants items"  do
    visit merchant_path(1)

    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Item Provident At")
    expect(page).to have_content("Item Ea Voluptatum")
  end
end