require 'spec_helper'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled   }
  it { should be_running   }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/apache2/apache2.conf') do
  it { should be_file }
  it { should contain "HostnameLookups Off" }
end
