# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module CarrierPickupSchedule
				# The Package Pickup Schedule API schedules a
				# Package Pickup and provides the user a confirmation number for the scheduled
				# pickup. Prior to making a Pickup Schedule call, it is recommended to use
				# the Pickup Availability API to confirm that service is available.
				# @param [Hash] options
				# @option options [required, Hash] carrier_pickup_schedule_request 
				#  * *:first_name* (required, String) — Only alpha characters, apostrophes, spaces, periods, and hyphens "-" may be used. For example: <FirstName>John</FirstName>
				#  * *:last_name* (required, String) — Only alpha characters, apostrophes, spaces, periods and hyphens "-" may be used. For example: <LastName>Doe</LastName>
				#  * *:firm_name* (String) — Only alpha and numeric characters, apostrophes, spaces, hyphens "-" and ampersands "&" may be used. Use this tag for a firm or company name. Some firms/companies that have their own ZIP codes require the use of firm name to properly identify their address. Note: FirmName is Optional except if the First Name and Last Name tags are null. For example: <FirmName>ABC Company</FirmName>
				#  * *:suite_or_apt* (required, String) — Apartment or suite number. Optional except if needed to uniquely identify an address at a multiple dwelling address, for example, an apartment building. For example: <SuiteOrApt>Suite 777</SuiteOrApt>
				#  * *:address2* (required, String) — Street address. For example: <Address2>1390 Market Street</Address2>
				#  * *:urbanization* (required, String) — Use this tag for Urbanization (for Puerto Rico only). ZIP Code prefixes 006 to 009, if area is so designated.
				#  * *:city* (required, String) — City name. Either ZIP5 or City and State are required. For example: <City>Houston</City>
				#  * *:state* (required, String) — State abbreviation. Either ZIP5 or City and State are required. For example: <State>TX</State>
				#  * *:zip5* (required, String) — 5-digit ZIP Code. Either ZIP5 or City and State are required. For example: <ZIP5>77058</ZIP5>
				#  * *:zip4* (required, String) — Use this tag for a 4 digit ZIP Code. For example: <ZIP4>1234</ZIP4>
				#  * *:phone* (required, String) — Two formats are allowed: (###) 123-4567 or ###-123-4567. For example: <Phone>5555551234</Phone> or <Phone>555-555-1234</Phone>
				#  * *:extension* (String) — Optional value for Phone Extension. For example: <Extension>201</Extension>
				#  * *:package* (required, Hash) — No values entered with this tag. <ServiceType> and <Count> tags are embedded under this. Refer to the XML request example section, below, to see how these embedded tags are formatted. If the <Count> for a service type is zero, you do not need to encode a <Package> but you must have at least one <Package> with embedded <ServiceType> and <Count> tags.
				#    * *:service_type* (required, String) — This tag is embedded under the <Package> tag. If your pickup contains more than one Service Type, use additional <Package> tags for each service type with the accompanying <ServiceType> and <Count> tags. Refer to the XML Request Example below to see how these embedded tags are formatted. For example: <ServiceType>PriorityMailExpress</ServiceType>
				#    * *:count* (required, String) — This tag is embedded under the <Package> tag. Enter the number of packages for the accompanying <ServiceType> tag. Maximum characters allowed: 3 or 999 packages. If your pickup contains more than one Service Type, use additional <Package> tags for each service type with the accompanying <ServiceType> and <Count> tags. Refer to the XML request example section, below, to see how these embedded tags are formatted. For example: <Count>2</Count>
				#    * *:estimated_weight* (required, String) — Enter the estimated aggregate weight (in pounds) of all packages being picked up. For example: <EstimatedWeight>14</EstimatedWeight>
				#    * *:package_location* (required, String) — Enter one of the following values: Note: "Other" requires information in the value for the <SpecialInstructions> tag. For example: <PackageLocation>Front Door</PackageLocation>
				#    * *:special_instructions* (String) — Value Required when PackageLocation is “Other”. Only alpha, numeric, commas, periods, apostrophes, _, &, -, ( ), ?, #, / +, @ and space characters may be used. For example: <SpecialInstructions>Packages are behind the screen door.</SpecialInstructions>
				#    * *:email_address* (String) — If provided, email notifications will be sent confirming package pickup, or request changes and cancellations. Maximum characters allowed: 50. For example: <EmailAddress>cpapple@email.com</EmailAddress>
				def carrier_pickup_schedule(options = {})
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request missing') if options[:carrier_pickup_schedule_request].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :first_name missing') if options[:carrier_pickup_schedule_request][:first_name].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :last_name missing') if options[:carrier_pickup_schedule_request][:last_name].nil?					
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :address2 missing') if options[:carrier_pickup_schedule_request][:address2].nil?
			
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :city missing') if options[:carrier_pickup_schedule_request][:city].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :state missing') if options[:carrier_pickup_schedule_request][:state].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :zip5 missing') if options[:carrier_pickup_schedule_request][:zip5].nil?
			
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :phone missing') if options[:carrier_pickup_schedule_request][:phone].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :package missing') if options[:carrier_pickup_schedule_request][:package].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :package, :service_type missing') if options[:carrier_pickup_schedule_request][:package][:service_type].nil?
					throw ArgumentError.new('Required arguments :carrier_pickup_schedule_request, :package, :count missing') if options[:carrier_pickup_schedule_request][:package][:count].nil?

					request = build_request(:carrier_pickup_schedule, options)
					get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'CarrierPickupSchedule',
						XML: request,
					})
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_carrier_pickup_schedule_request(xml, options = {})
					xml.tag!('FirstName', options[:carrier_pickup_schedule_request][:first_name])
					xml.tag!('LastName', options[:carrier_pickup_schedule_request][:last_name])
					tag_unless_blank(xml, 'FirmName', options[:carrier_pickup_schedule_request][:firm_name])
					xml.tag!('SuiteOrApt', options[:carrier_pickup_schedule_request][:suite_or_apt])
					xml.tag!('Address2', options[:carrier_pickup_schedule_request][:address2])
					xml.tag!('Urbanization', options[:carrier_pickup_schedule_request][:urbanization])
					xml.tag!('City', options[:carrier_pickup_schedule_request][:city])
					xml.tag!('State', options[:carrier_pickup_schedule_request][:state])
					xml.tag!('ZIP5', options[:carrier_pickup_schedule_request][:zip5])
					xml.tag!('ZIP4', options[:carrier_pickup_schedule_request][:zip4])
					xml.tag!('Phone', options[:carrier_pickup_schedule_request][:phone])
					tag_unless_blank(xml, 'Extension', options[:carrier_pickup_schedule_request][:extension])
					

					if options[:carrier_pickup_schedule_request][:packages]					
						options[:carrier_pickup_schedule_request][:packages].each do |pkg|
							xml.tag!('Package') do
								xml.tag!('ServiceType', pkg[:service_type])
								xml.tag!('Count', pkg[:count])
							end
						end
					end

					xml.tag!('EstimatedWeight', options[:carrier_pickup_schedule_request][:estimated_weight])
					xml.tag!('PackageLocation', options[:carrier_pickup_schedule_request][:package_location])
					tag_unless_blank(xml, 'SpecialInstructions', options[:carrier_pickup_schedule_request][:special_instructions])
					tag_unless_blank(xml, 'EmailAddress', options[:carrier_pickup_schedule_request][:email_address])
				
					xml.target!
				end

			end
		end
	end
end
