require 'spec_helper'

describe Post do
  describe :titulo do
    before { @titulo = 'Teste titulo' }
    subject { Post.create(:titulo => @titulo) }
    its(:titulo) { should eq @titulo }
    its(:titulo) { should_not be_slugabble }
    it { should be_activerecord }
    its(:titulo) { should_not be_activerecord }
  end
  
  describe :slug do
    before { @post = Post.create!(:slug => 'slug1') }
    subject { @post }
    it "doesn't save with an existing slug" do
      Post.create(:slug => @post.slug).should_not be_valid
    end
    
    its(:slug) { should be_slugabble }
    
    it { "".should_not be_slugabble }
  end
end