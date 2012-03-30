require 'spec_helper'

describe PostsController do
  describe 'GET: new' do
    before { get :new }
    subject { response }
    its(:code) { should eq '200' }
    it { should render_template(:new) }
    it { assigns(:post).should be_a Post }
  end
  
  describe 'POST: create' do
    before { post :create, {:post => {:titulo => 'Teste', :texto => 'Um texto', :slug => 'uma-slug'}} }
    subject { response }
    its(:code) { should eq '302' }
    its(:location) { should eq posts_url }
    it { Post.count.should eq 1 }
    context 'created post' do
      subject { Post.first }
      its(:titulo) { should eq 'Teste' }
      its(:texto) { should eq 'Um texto' }
      its(:slug) { should eq 'uma-slug' }
    end
    it { flash[:notice].should_not be_nil }
    it { flash[:notice].should match /Post \d+ salvo com sucesso/ }
  end
  
  describe 'GET: index' do
    before { get :index }
    subject { response }
    its(:code) { should eq '200' }
    it { should render_template(:index) }
  end
end