# Chef InSpec test for recipe workstation::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

describe port(80) do
  it { should_not be_listening }
end

describe package('tree') do
  it { should be_installed}
end

describe file('/etc/motd') do
  its('content') { should match %r{Property of} }
  it { should be_owned_by 'root' }
end
