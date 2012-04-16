# -*- encoding : utf-8 -*-

Dado /^que eu estou na p[aá]gina de novo post$/ do
  visit new_post_path
end

Quando /^eu preencho o "([^"]*)" com "([^"]*)"$/ do |campo, valor|
  fill_in campo, :with => valor
end

Quando /^eu clico no botão "([^"]*)"$/ do |botao|
  click_button botao
end

Então /^o post deve ser salvo$/ do
  Post.count.should eq 1
end

Então /^eu devo ver a mensagem Post salvo com sucesso com o id$/ do
  find('p.notice').text.should match /Post \d+ salvo com sucesso/m
end

Dado /^que eu tenho um post com slug fred$/ do
  Post.create(:slug=>'fred')
end

Então /^eu devo ver a mensagem Slug duplicado$/ do
  find('p.error').text.should match /Slug dublicado/
end