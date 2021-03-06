=begin
#Umschlag OpenAPI

#API definition for Umschlag

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Umschlag::GeneralError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GeneralError' do
  before do
    # run before each test
    @instance = Umschlag::GeneralError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GeneralError' do
    it 'should create an instance of GeneralError' do
      expect(@instance).to be_instance_of(Umschlag::GeneralError)
    end
  end
  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
