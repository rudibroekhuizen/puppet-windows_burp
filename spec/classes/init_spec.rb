require 'spec_helper'
describe 'windows_burp' do

  context 'with defaults for all parameters' do
    it { should contain_class('windows_burp') }
  end
end
