require 'spec_helper'

#ポート関係↓

describe port(80) do
  it { should be_listening }
end

describe port(22) do
  it { should be_listening }
end

describe port(443) do
  it { should be_listening }
end
#httpsの環境構築をしていないのでエラー

describe port(3000) do
  it { should be_listening }
end
#railsサーバー起動時にtrue

#パッケージ関係↓

describe package('git') do
  it { should be_installed }
end

describe command('ruby -v') do
  its(:stdout) { should match /ruby 2\.7\.1/ }
end

describe command('rails -v') do
  its(:stdout) { should match /Rails 6\.0\.3\.2/ }
end

describe package('mysql-community-server') do
  it { should be_installed }
end


  
