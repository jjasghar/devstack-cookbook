require 'spec_helper'

describe host('www.google.com') do
  it { should be_reachable }
end

describe port(80) do
  it { should be_listening }
end

describe port(5000) do
  it { should be_listening }
end

describe port(8774) do
  it { should be_listening }
end

describe port(8775) do
  it { should be_listening }
end

describe port(8776) do
  it { should be_listening }
end

describe port(9191) do
  it { should be_listening }
end

describe port(9292) do
  it { should be_listening }
end

describe file('/opt/stack/devstack/openrc') do
  it { should be_file }
end
