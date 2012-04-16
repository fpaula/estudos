require 'spec_helper'

describe Post do
  describe :titulo do
    before { @titulo = 'Teste titulo' }
    subject { Post.create(:titulo => @titulo) }
    its(:titulo) { should eq @titulo }
  end
  
  describe :slug do
    before { @post = Post.create!(:slug => 'slug1') }
    it "doesn't save with an existing slug" do
      Post.create(:slug => @post.slug).should_not be_valid
    end
  end
end