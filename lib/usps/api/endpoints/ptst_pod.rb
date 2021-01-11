# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module PTSTPod
				#
				# Track Proof of Delivery API
				#
				# Overview
				#
				# @option option [(Alias)] :PTSTPodRequest (Required)
				#   @option option [String] :TrackId (Required)
				#   @option option [integer] :MpSuffix (Required)
				#   @option option [String] :MpDate (Required)
				#   @option option [String] :RequestType (Required)
				#   @option option [String] :FirstName (Required)
				#   @option option [String] :LastName (Required)
				#   @option option [String] :Email1 (Optional)
				#   @option option [String] :Email2 (Optional)
				#   @option option [String] :Email3 (Optional)
				#   @option option [String] :CustRegID (Required)
				#   @option option [String] :TableCode (Required)
				#   @option option [String] :ClientIp (Optional)
				#   @option option [String] :SourceId (Optional)

				#
				# @see 
				def ptst_pod(options = {})
					throw ArgumentError.new('Required arguments :ptst_pod_request missing') if options[:ptst_pod_request].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :track_id missing') if options[:ptst_pod_request][:track_id].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :mp_suffix missing') if options[:ptst_pod_request][:mp_suffix].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :mp_date missing') if options[:ptst_pod_request][:mp_date].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :request_type missing') if options[:ptst_pod_request][:request_type].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :first_name missing') if options[:ptst_pod_request][:first_name].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :last_name missing') if options[:ptst_pod_request][:last_name].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :cust_reg_id missing') if options[:ptst_pod_request][:cust_reg_id].nil?
					throw ArgumentError.new('Required arguments :ptst_pod_request, :table_code missing') if options[:ptst_pod_request][:table_code].nil?

					request = build_request(:ptst_pod, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'PTSTPod',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_ptst_pod_request(xml, options = {})
					xml.tag!('TrackId', options[:ptst_pod_request][:track_id])
					xml.tag!('MpSuffix', options[:ptst_pod_request][:mp_suffix])
					xml.tag!('MpDate', options[:ptst_pod_request][:mp_date])
					xml.tag!('RequestType', options[:ptst_pod_request][:request_type])
					xml.tag!('FirstName', options[:ptst_pod_request][:first_name])
					xml.tag!('LastName', options[:ptst_pod_request][:last_name])
					tag_unless_blank(xml, 'Email1', options[:ptst_pod_request][:email1])
					tag_unless_blank(xml, 'Email2', options[:ptst_pod_request][:email2])
					tag_unless_blank(xml, 'Email3', options[:ptst_pod_request][:email3])
					xml.tag!('CustRegID', options[:ptst_pod_request][:cust_reg_id])
					xml.tag!('TableCode', options[:ptst_pod_request][:table_code])
					tag_unless_blank(xml, 'ClientIp', options[:ptst_pod_request][:client_ip])
					tag_unless_blank(xml, 'SourceId', options[:ptst_pod_request][:source_id])
					xml.target!
				end

			end
		end
	end
end
