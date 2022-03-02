describe user('root') do
  it { should exist }
end

describe file('/tmp/hello.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match(%r{Hello world!}) }
end
