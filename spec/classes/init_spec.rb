require 'spec_helper'
describe 'puppetdemo' do

  context 'with defaults for all parameters' do
    it { should contain_class('puppetdemo') }
    it { should contain_file('/etc/demo').with(
      'mode' => '0644',
      'owner' => 'root',
      'content' => 'This is a demo module',
    ) }
    it { should contain_user('demo').with(
      'uid' => '9999',
    ) }
  end
end
