require 'spec_helper'

describe "posts route" do
  context "new path" do
    subject { {:get => "/posts/new"} }
    it { should route_to(:controller => "posts", :action => "new") }
  end

  context "new named path" do
    subject { {:get => new_posts_path} }
    it { should route_to(:controller => "posts", :action => "new") }
  end
end