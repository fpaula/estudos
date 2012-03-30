require 'spec_helper'

describe Post do
  describe :titulo do
    before { @titulo = 'Teste titulo'  }
    subject { Post.create(:titulo => @titulo) }
    its(:titulo) { should eq @titulo }
  end
end