require "rails_helper"

feature "Article create" do
  before(:each) do
    sign_up
    create_new_article 
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New Article'
  end 

  scenario "allows user to edit article" do
    
    click_link('Редактировать')
    expect(page).to have_content 'Автор'
    fill_in :article_title, with: 'Hello!!!'
    fill_in :article_text, with: 'Hello user'

    click_button('Сохранить')
    expect(page).to have_content 'Hello!!!'
  end

end