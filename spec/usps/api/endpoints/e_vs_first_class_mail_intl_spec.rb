# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

require 'spec_helper'

RSpec.describe Usps::Api::Endpoints::EVSFirstClassMailIntl do
  let(:client) { Usps::Client.new }
  context 'e_vs_first_class_mail_intl' do
    it 'requires e_vs_first_class_mail_intl_request' do
      expect { client.e_vs_first_class_mail_intl }.to raise_error ArgumentError, /Required arguments :e_vs_first_class_mail_intl_request missing/
    end
  end
end
