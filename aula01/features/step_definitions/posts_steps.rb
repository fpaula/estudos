# -*- encoding : utf-8 -*-

Dado /^que eu estou na pagina de novo post$/ do
  visit new_posts_path
end

Quando /^eu preencho o "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in campo, :with => valor
end

Quando /^eu clico no botão "([^"]*)"$/ do |botao|
  click_button botao
end

Então /^o post deve ser salvo$/ do
  pending # express the regexp above with the code you wish you had
end

Então /^eu devo ver a mensagem Post salvo com sucesso com o id$/ do
  pending # express the regexp above with the code you wish you had
end