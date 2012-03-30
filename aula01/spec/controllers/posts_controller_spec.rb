require 'spec_helper'

describe PostsController do
  describe 'GET: new' do
    before { get :new }
    subject { response }
    its(:code) { should eq '200' }
    it { should render_template(:new) }
    it { assigns(:post).should be_a Post }
  end
end