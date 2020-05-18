require 'spec_helper'

feature 'Visting Pages' do
  [
    '/',
  ].each do |page_route|
    scenario "#{page_route} load successfully" do
      visit page_route
      expect(page.status_code).to eq(200)
    end
  end
end
