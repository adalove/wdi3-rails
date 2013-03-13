# == Schema Information
#
# Table name: subscribers
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  email                 :string(255)
#  password              :string(255)
#  password_confirmation :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'spec_helper'

describe Subscriber do
  describe '.new' do
    it 'creates an instance of Subscriber' do
    subscriber = Subscriber.new
    expect(subscriber).to be_an_instance_of(Subscriber)
    end
    it 'has username, email, and password and password_confirmation' do
      subscriber = Subscriber.new(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a' )
      expect(subscriber.name).to eq 'bob'
      expect(subscriber.email).to eq 'bob@gmail.com'
      expect(subscriber.password).to eq 'a'
      expect(subscriber.password_confirmation).to eq 'a'
    end
  end
  describe '.create' do
    it 'has an id' do
     subscriber = Subscriber.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
     expect(subscriber.id).to_not be nil
    end
  end
end