require 'spec_helper'

describe 'minimum2scp.org' do
  it { is_expected.to have_dns.with_type('A').and_address('219.94.252.116') }
end
