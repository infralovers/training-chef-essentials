# Chef InSpec test for recipe apache::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end

describe command('curl localhost') do
  its('stdout') { should match %r{Hello, world} }
end
