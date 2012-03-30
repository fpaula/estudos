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
=begin  
  context "create" do
    subject { {:post => "/posts"} }
    it { should route_to(:controller => "posts", :action => "create") }
  end
=end
  context "named path" do
    subject { {:get => posts_path} }
    it { should route_to(:controller => "posts", :action => "index") }
  end
end