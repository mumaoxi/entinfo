require 'spec_helper'

describe Entinfo do
  it 'has a version number' do
    expect(Entinfo::VERSION).not_to be nil
  end

  it 'does something useful' do
    Entinfo.configure do |config|
        # 运营商分配给您的SN号(帐号)
        config.sn = 'SDK-xxx-00-00000'
        # 运营商分配给您的密码
        config.pwd = '0-0_0-0'
    end
    expect(Entinfo.send_sms('15201280641','早上好！【首趣商城】').has_key?(:success)).to eq(true)
  end
end
