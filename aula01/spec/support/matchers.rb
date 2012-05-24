RSpec::Matchers.define :be_slugabble do
  match_for_should do |actual|
    actual =~ /^[a-z0-9-]*$/
  end
  
  match_for_should_not do |actual|
    actual !~ /^[a-z0-9-]+$/
  end
  
  failure_message_for_should do |actual|
    "expected that '#{actual}' would be a valid slug"
  end
  
  failure_message_for_should_not do |actual|
    "expected that '#{actual}' wouldn't be a valid slug"
  end
end

RSpec::Matchers.define :be_activerecord do
  match do |actual|
    actual.kind_of?(ActiveRecord::Base)
  end
  
  failure_message_for_should do |actual|
    "expected that #{actual.class} would inherit ActiveRecord::Base"
  end
  
  failure_message_for_should_not do |actual|
    "expected that #{actual.class} wouldn't inherit ActiveRecord::Base"
  end
end