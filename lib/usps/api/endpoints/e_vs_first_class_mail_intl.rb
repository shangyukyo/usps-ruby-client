# frozen_string_literal: true

# This file was auto-generated by lib/tasks/api.rake

module Usps
	module Api
		module Endpoints
			module EVSFirstClassMailIntl
				# The
				# First Class Mail International Label API lets
				# customers generate First Class International labels given the weight and
				# dimensions of the item. 
				# @param [Hash] options
				# @option options [required, Hash] e_vs_first_class_mail_intl_request 
				#  * *:password* (String) — For backward compatibility; not validated.
				#  * *:option* (Empty) — For future use.
				#  * *:revision* (required, String) — Use of value 2 Required as of January 2011. For example: <Revision>2</Revision>
				#  * *:image_parameters* (Hash) — Groups alternate image options.
				#    * *:image_parameter* (String) — Returns alternate label image. Only alternate 4’’x6’’ size label image may be requested at this time. · 4X6LABEL - (4X6 on a full page 8.5/11” background) · 4X6LABELL - (Landscape – true size 4X6; image rotated, not on an 8.5 x 11 background page) · 4X6LABELP- (Portrait – true size 4X6, not on an 8.5 x 11 background page) · 4X6ZPL203DPI - (ZPL - Zebra Programming Language) format. When using this enumeration, <ImageType> is required - this tag cannot be left blank. Integrators should use either “TIF” or “PDF” for ZPL – neither value will impact the label image itself, but it must be included in the request to return a successful response. · 4X6ZPL300DPI - Prints a label formatted for ZPL printers in 300 dpi. When using this enumeration, <ImageType> is required - this tag cannot be left blank. Integrators should use either “TIF” or “PDF” for ZPL – neither value will impact the label image itself, but it must be included in the request to return a successful response. For example: <ImageParameter>4X6LABEL</ImageParameter>
				#    * *:from_first_name* (required, String) — Both FromFirstName and FromLastName are Required if FromFirmName is left blank. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromFirstName>John</FromFirstName>
				#    * *:from_middle_initial* (String) — Middle Initial. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromMiddleInitial>L</FromMiddleInitial>
				#    * *:from_last_name* (required, String) — Both FromFirstName and FromLastName are Required if FromFirmName is left blank. Maximum Length: 32 characters total for First, Middle, and Last Names with space after first and middle name. For example: <FromLastName>Doe</FromLastName>
				#    * *:from_firm* (required, String) — FromFirm is Required if FromFirstName and FromLastName are left blank. For example: <FromFirm>XYZ</FromFirm>
				#    * *:from_address1* (String) — Use this tag for a suite or apartment number only. For example: <FromAddress1>Suite 100</FromAddress1>
				#    * *:from_address2* (required, String) — Use this tag for the primary address line. For example: <FromAddress2>10 Elm Street</FromAddress2>
				#    * *:from_urbanization* (String) — Use this tag for Puerto Rico only. ZIP Code prefixes 006 to 009, if area is so designated. For example:<FromUrbanization>URB Caparra Ter</FromUrbanization>
				#    * *:from_city* (required, String) — Use this tag to specify originating city. For example: <FromCity>Anytown</FromCity>
				#    * *:from_state* (required, String) — Use 2-letter USPS abbreviation. For example: <FromState>AK</FromState>
				#    * *:from_zip5* (required, String) — Five-digit valid ZIP code Required. For example: <FromZip5>01234</FromZip5>
				#    * *:from_zip4* (String) — If value is entered, four digits are Required. Must be a valid ZIP+4 extension. For example: <FromZip4>5678</FromZip4>
				#    * *:from_phone* (required, String) — 10 digits Required (including area code), with no punctuation. Use format: 2125551234 For example: <FromPhone>5555555555</FromPhone>
				#    * *:to_name* (String) — Deprecated. See “ToFirstName” and “ToLastName” tags.
				#    * *:to_first_name* (required, String) — Both ToFirstName and ToLastName are Required if ToFirm is left blank. For example: <ToFirstName>John</ToFirstName>
				#    * *:to_last_name* (required, String) — Both ToFirstName and ToLastName are Required if ToFirm is left blank. For example: <ToLastName>Doe</ToLastName>
				#    * *:to_firm* (required, String) — ToFirm is Required if ToFirstName and ToLastName are left blank. For example: <ToFirm></ToFirm>
				#    * *:to_address1* (String) — Three address lines are provided, but only one is Required. Use as many as needed for complete address. For example: <ToAddress1>Apartado 3068</ToAddress1>
				#    * *:to_address2* (required, String) — Three address lines are provided, but only one is Required. Use as many as needed for complete address.
				#    * *:to_address3* (String) — Three address lines are provided, but only one is Required. Use as many as needed for complete address.
				#    * *:to_city* (required, String) — Recipient's city. For example: <ToCity>PUERTO VALLARTA</ToCity>
				#    * *:to_province* (String) — Enter the province for the recipient. For example: <ToProvince>JALISCO</ToProvince>
				#    * *:to_country* (required, String) — The country name entered must match an entry from the USPS-approved International Index of Countries and Localities or be "United States". (http://pe.usps.gov/text/Imm/Immctry.htm - click on the link for "International Country Listings.") Using a country name not on the list will result in a request failure. For example: <ToCountry>MEXICO</ToCountry>
				#    * *:to_postal_code* (required, String) — Enter the postal code for the recipient. For example: <ToPostalCode>46807</ToPostalCode>
				#    * *:to_po_box_flag* (required, String) — Indicates whether or not the To Address is a Post Office Box. For example: <ToPOBoxFlag>N</ToPOBoxFlag>
				#    * *:to_phone* (String) — No format checking is done on international phone numbers. Required when FirstClassMailIntlRequest[ToPOBoxFlag='Y']. For example: <ToPhone>011 52 (322) 222-0069</ToPhone>
				#    * *:to_fax* (String) — No format checking is done on international fax numbers. For example: <ToFax>011 52 (322) 222-0074</ToFax>
				#    * *:to_email* (String) — One single, complete, and valid e-mail address is Required if tag is used. For example: <ToEmail>cpapple@email.com</ToEmail>
				#    * *:first_class_mail_type* (String) — Used to determine the postage rate. See also FirstClassMailIntlRequest/Machinable. For example: <FirstClassMailType>PACKAGE SERVICE</FirstClassMailType>
				#    * *:shipping_contents* (required, Hash) — 
				#      * *:item_detail* (Hash) — 
				#        * *:description* (required, String) — Description of the item. Non-descriptive wording such as 'Gift' will result in an error. For example: <Description>Policy guidelines document</Description>
				#        * *:quantity* (required, Integer) — Quantity of the item. Integer value Required. For example: <Quantity>1</Quantity>
				#        * *:value* (required, Decimal) — The data entered with this tag provides the value of the set of items. If the item is 2 boxes of 50 pens and the value of each box is $10.00, "20.00" (2 boxes x $10.00) should be entered. If the value of each pen is .25 then "25.00" (100 pens x .25) should be entered. For example: <Value>55.00</Value>
				#        * *:net_pounds* (required, Integer) — Provide the pounds component of the weight of the individual item listed within this ItemDetail. For example: <NetPounds>1</NetPounds>
				#        * *:net_ounces* (required, Decimal) — Provide the ounces component of the weight of the individual item listed within this ItemDetail. For example: <NetOunces>5</NetOunces>
				#        * *:hs_tariff_number* (required, String) — For commercial items only. If known, the HS tariff number must be based on the Harmonized Commodity Description and Coding System developed by the World Customs Organization. For example: <HSTariffNumber>490110</HSTariffNumber>
				#        * *:country_of_origin* (required, String) — For commercial items only. Country of Origin means the country where the goods originated, e.g. were produced, manufactured, or assembled. It is recommended you supply this information and attach an invoice to the outside to accelerate customs clearance in processing the items. The country name entered must match an entry from the USPS-approved International Index of Countries and Localities or be "United States". (http://pe.usps.gov/text/Imm/Immctry.htm - click on the link for "International Country Listings.") Using a country name not on the list will result in a request failure. For example: <CountryOfOrigin>United States</CountryOfOrigin>
				#        * *:postage* (String Decimal) — Use this tag for entering a postage amount, if known. If the tag is present, but the value is blank, the postage will be automatically calculated. For example: <Postage></Postage>
				#        * *:gross_pounds* (required, Integer) — Gross pounds and ounces together represent the total package weight, including packing material. For example, a package weighing 3 lbs 8 ounces would have "3" entered here and "8" entered with the "GrossOunces" tag. The Web Tool will check for maximum shipping weight of 70 pounds. Allowable weight may change based on the service used to send package and the destination country. For example: <GrossPounds>4</GrossPounds>
				#        * *:gross_ounces* (required, Integer) — Enter the ounces component of the total package weight with this tag. For example: <GrossOunces>0</GrossOunces>
				#        * *:machinable* (Boolean) — Indicates whether or not the item is machinable. A surcharge is applied to a First-Class Mail International item if it has one or more non-machinable characteristics. See International Mail Manual (IMM) Section 241 for more information. For example: <Machinable>false</Machinable>
				#        * *:content_type* (required, String) — Specifies the content of the package or envelope. For example: <ContentType>DOCUMENTS</ContentType>
				#        * *:content_type_other* (String) — Required when FirstClassMailIntlRequest[ContentType='OTHER'].
				#        * *:agreement* (required, String) — Indicates the requestor's agreement to terms and conditions of mailing. Requires a value of Y to print and in Signature Box along with Current Date (Central Time USA). Any other value returns an error.
				#        * *:comments* (String) — For future use.
				#        * *:license_number* (String) — For future use.
				#        * *:certificate_number* (String) — For future use.
				#        * *:invoice_number* (String) — For future use.
				#        * *:image_type* (required, String) — Label Image Type. Note: All <ImageType> values are ignored when <ImageParameter> = “4X6ZPL203DPI” or “4X6ZPL300DPI”. For example: <ImageType>PDF</ImageType>
				#        * *:image_layout* (String) — Specified whether the pages are to be returned one per file or all in one file. The current FCMI label is one page so this tag has no effect. For example: <ImageLayout>ONEPERFILE</ImageLayout>
				#        * *:customer_ref_no* (String) — Written to Postal Manifest Detail record. For example: <CustomerRefNo>Ref 369246</CustomerRefNo>
				#        * *:customer_ref_no2* (String) — Written to Postal Manifest Detail record For example: <CustomerRefNo2>ACT 369246</CustomerRefNo2>
				#        * *:po_zip_code* (String) — ZIP Code of Post Office or collection box where item is mailed. May be different than FromZip5. This tag will take precedence over FromZip5 when provided. For example: <POZipCode>00962</POZipCode>
				#        * *:label_date* (String) — Date the mail will enter the mail stream. No more than three days in the future. Default is day of request. For example: <LabelDate>09/28/2010</LabelDate>
				#        * *:hold_for_manifest* (String) — Restricted use. Holds manifest record for possible inclusion in SCAN request.
				#        * *:eelpfc* (String) — Exemption and Exclusion Legend or PFC Code. Currently Optional, in the future it may be Required for use. Please refer to the International Mail Manual for further information - http://pe.usps.gov/text/imm/immc5_007.htm. To activate check boxes use ”30.37a” or “30.37h”. For example: <EELPFC>30.37a</EELPFC>
				#        * *:container* (String) — This tag has been deprecated
				#        * *:length* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:width* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:height* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:girth* (Decimal) — Value must be numeric. Units are inches. If partial dimensions are provided, an error response will return. Length, Width, Height are required for accurate pricing of a rectangular package when any dimension of the item exceeds 12 inches. In addition, Girth is required only for a non-rectangular package in addition to Length, Width, Height when any dimension of the package exceeds 12 inches. For rectangular packages, the Girth dimension must be left blank as this dimension is to only be used for non-rectangular packages. Please reference https://about.usps.com/postalbulletin/2018/pb22509/html/updt_002.htm for more details on dimensional weight pricing
				#        * *:extra_services* (Hash) — Groups extra services elements
				#          * *:extra_service* (Extra Service Name) — [{"Extra Service Name"=>"e-USPS Delivery Confirmation International", "Service ID"=>"109"}]
				#          * *:price_options* (String) — Indicates if retail, commercial base or commercial plus pricing should be returned. For example: <PriceOptions>COMMERCIAL BASE</PriceOptions>
				#          * *:action_code* (String) — Passed to SPE file via the shipment manifest.
				#          * *:opt_out_of_spe* (boolean) — Allows a customer to opt out of SPE file creation. “false” WILL create a SPE file. Note: This request tag is case sensitive.
				#          * *:permit_number* (String) — Number associated with a mailing permit. The permit is permission to use a certain postage payment method for bulk and commercial mailings
				#          * *:account_zip_code* (String) — ZIP of Account Post Office where mailed if different from <FromZip5/>. Written to Postal Manifest Detail record. Must be valid ZIP Code. For example: <AccountZipCode>00962</AccountZipCode>
				#          * *:machinable* (boolean) — Indicates whether or not the item is machinable. A surcharge is applied to a First-Class Mail International item if it has one or more non-machinable characteristics. See International Mail Manual (IMM) Section 241 for more information. For example: <Machinable>false</Machinable>
				#          * *:destination_rate_indicator* (required, String) — Required for destination entry packages · I = International Service Center (ISC) · N = None
				#          * *:mid* (String) — Mailer ID (MID), Represents Mail Owner MID. Located in position #13 in the Detail 1 record of the Shipping Services File v2.0. For example: <MID>847654321</ MID>
				#          * *:logistics_manager_mid* (String) — The MID of the company that manages the mailing. Located in position #12 in the Detail 1 record of the Shipping Services File v2.0. Note: If LogisticsManagerMID is populated, either CRID or MID must also be populated. For example: <LogisticsManagerMID>489001</LogisticsManagerMID>
				#          * *:crid* (String) — Customer Registration ID, Represents Mail Owner CRID. Located in position #20 in the Detail 1 record of the Shipping Services File v2.0. For example: <CRID>544762</ CRID>
				#          * *:vendor_code* (String) — Code from vendor software to identify the developer of the shipping system. Located in position #15 in the Detail 1 record of the Shipping Services File v2.0. For example: <VendorCode>1234<VendorCode>
				#          * *:vendor_product_version_number* (String) — Shipping software’s product version number. Located in position #16 in the Detail 1 record of the Shipping Services File v2.0. For example: <VendorProductVersionNumber>5.02.1B</ VendorProductVersionNumber>
				#          * *:e_postage_mailer_reporting* (String) — Verifies Sender Information, sender fields must match From information when <ePostageMailerReporting>=1 · 1 - (ePostage sender information in SSF) · 2 - (ePostage sender information through DES) · 3 - (ePostage sender information using child MID)
				#          * *:sender_first_name* (String) — First Name of Sender. For example: <SenderFirstName>Adam </ SenderFirstName> Required when <ePostageMailerReporting>=1
				#          * *:sender_last_name* (String) — Last Name of Sender. For example: <SenderLastName>Smith </ SenderLastName> Required when <ePostageMailerReporting>=1
				#          * *:sender_business_name* (String) — Values for Sender Business Name must be sent. For example: <SenderBusinessName>USPS</ SenderBusinessName>
				#          * *:sender_address1* (String) — Sender address line. Use this tag for full address (Address1 and Address2) Must match Address1 and Address2 or will produce an error. For example: <SenderAddress1>STE 150 10 Elm Street </SenderAddress1> Required when <ePostageMailerReporting>=1
				#          * *:sender_city* (String) — Sender city For example: <SenderCity>BETHESDA</ SenderCity> Required when <ePostageMailerReporting>=1
				#          * *:sender_state* (String) — Sender state. For example: <SenderState>MD</ SenderState> Required when <ePostageMailerReporting>=1
				#          * *:sender_zip5* (String) — Sender ZIP code. For example: <SenderZip5>20212</SenderZip5> Required when <ePostageMailerReporting>=1
				#          * *:sender_phone* (String) — Sender Phone #. 10 digits Required (including area code), with no punctuation. For example: <SenderPhone>2125551234</ SenderPhone> Required when <ePostageMailerReporting>=1
				#          * *:sender_email* (String) — E-mail Address of Sender. Valid e-mail addresses must be used. For example: <SenderEMail>cpapple@email.com</ SenderEMail> Required when <ePostageMailerReporting>=1
				#          * *:remaining_barcodes* (required, String) — This contains the number of remaining barcodes that can be generated for this particular request.
				#          * *:chargeback_code* (String) — Used in Shipping Services File v2.0 for G-10 labels. Contact your Technical Integration Specialist for details.

				def e_vs_first_class_mail_intl(options = {})
					throw ArgumentError.new('Required arguments :e_vs_first_class_mail_intl_request missing') if options[:e_vs_first_class_mail_intl_request].nil?					

					request = build_request(:e_vs_first_class_mail_intl, options)
					response = get('https://secure.shippingapis.com/ShippingAPI.dll', {
						API: 'eVSFirstClassMailIntl',
						XML: request,
					})

					raise response['eVSFirstClassMailIntlResponse']['Error'] if response['eVSFirstClassMailIntlResponse']['Error'].present?

					images = Array(response['eVSFirstClassMailIntlResponse']['LabelImage'], response['eVSFirstClassMailIntlResponse']['Page2Image'], response['eVSFirstClassMailIntlResponse']['Page3Image'])
					save_image(options[:path], , response['eVSFirstClassMailIntlResponse']['BarcodeNumber'])
					response						
				end

				private

				def tag_unless_blank(xml, tag_name, data)
					xml.tag!(tag_name, data) unless data.blank? || data.nil?
				end

				def build_e_vs_first_class_mail_intl_request(xml, options = {})
					tag_unless_blank(xml, 'PASSWORD', options[:e_vs_first_class_mail_intl_request][:password])
					tag_unless_blank(xml, 'Option', options[:e_vs_first_class_mail_intl_request][:option])
					xml.tag!('Revision', options[:e_vs_first_class_mail_intl_request][:revision] || '2')

					xml.tag!('ImageParameters') do
						tag_unless_blank(xml, 'ImageParameter', options[:e_vs_first_class_mail_intl_request][:image_parameters][:image_parameter] || '4X6LABEL')
					end if options[:e_vs_first_class_mail_intl_request][:image_parameters].present?

					xml.tag!('FromFirstName', options[:e_vs_first_class_mail_intl_request][:from_first_name])
					tag_unless_blank(xml, 'FromMiddleInitial', options[:e_vs_first_class_mail_intl_request][:from_middle_initial])
					xml.tag!('FromLastName', options[:e_vs_first_class_mail_intl_request][:from_last_name])
					xml.tag!('FromFirm', options[:e_vs_first_class_mail_intl_request][:from_firm])
					tag_unless_blank(xml, 'FromAddress1', options[:e_vs_first_class_mail_intl_request][:from_address1])
					xml.tag!('FromAddress2', options[:e_vs_first_class_mail_intl_request][:from_address2])
					tag_unless_blank(xml, 'FromUrbanization', options[:e_vs_first_class_mail_intl_request][:from_urbanization])
					xml.tag!('FromCity', options[:e_vs_first_class_mail_intl_request][:from_city])
					xml.tag!('FromState', options[:e_vs_first_class_mail_intl_request][:from_state])
					xml.tag!('FromZip5', options[:e_vs_first_class_mail_intl_request][:from_zip5])
					tag_unless_blank(xml, 'FromZip4', options[:e_vs_first_class_mail_intl_request][:from_zip4])
					xml.tag!('FromPhone', options[:e_vs_first_class_mail_intl_request][:from_phone])
					tag_unless_blank(xml, 'ToName', options[:e_vs_first_class_mail_intl_request][:to_name])
					xml.tag!('ToFirstName', options[:e_vs_first_class_mail_intl_request][:to_first_name])
					xml.tag!('ToLastName', options[:e_vs_first_class_mail_intl_request][:to_last_name])
					xml.tag!('ToFirm', options[:e_vs_first_class_mail_intl_request][:to_firm])
					tag_unless_blank(xml, 'ToAddress1', options[:e_vs_first_class_mail_intl_request][:to_address1])
					xml.tag!('ToAddress2', options[:e_vs_first_class_mail_intl_request][:to_address2])
					tag_unless_blank(xml, 'ToAddress3', options[:e_vs_first_class_mail_intl_request][:to_address3])
					xml.tag!('ToCity', options[:e_vs_first_class_mail_intl_request][:to_city])
					tag_unless_blank(xml, 'ToProvince', options[:e_vs_first_class_mail_intl_request][:to_province])
					xml.tag!('ToCountry', options[:e_vs_first_class_mail_intl_request][:to_country])
					xml.tag!('ToPostalCode', options[:e_vs_first_class_mail_intl_request][:to_postal_code])
					xml.tag!('ToPOBoxFlag', options[:e_vs_first_class_mail_intl_request][:to_po_box_flag])
					tag_unless_blank(xml, 'ToPhone', options[:e_vs_first_class_mail_intl_request][:to_phone])
					tag_unless_blank(xml, 'ToFax', options[:e_vs_first_class_mail_intl_request][:to_fax])
					tag_unless_blank(xml, 'ToEmail', options[:e_vs_first_class_mail_intl_request][:to_email])
					tag_unless_blank(xml, 'FirstClassMailType', options[:e_vs_first_class_mail_intl_request][:first_class_mail_type])

					xml.tag!('ShippingContents') do
						if options[:e_vs_first_class_mail_intl_request][:item_details].present?
							options[:e_vs_first_class_mail_intl_request][:item_details].each do |item_detail|
								xml.tag!('ItemDetail') do
									xml.tag!('Description', item_detail[:description])
									xml.tag!('Quantity', item_detail[:quantity])
									xml.tag!('Value', item_detail[:value])
									xml.tag!('NetPounds', item_detail[:net_pounds])
									xml.tag!('NetOunces', item_detail[:net_ounces])
									xml.tag!('HSTariffNumber', item_detail[:hs_tariff_number])
									xml.tag!('CountryOfOrigin', item_detail[:country_of_origin])
								end
							end
						end
					end

					tag_unless_blank(xml, 'Postage', options[:e_vs_first_class_mail_intl_request][:postage])
					xml.tag!('GrossPounds', options[:e_vs_first_class_mail_intl_request][:gross_pounds])
					xml.tag!('GrossOunces', options[:e_vs_first_class_mail_intl_request][:gross_ounces])
					tag_unless_blank(xml, 'Machinable', options[:e_vs_first_class_mail_intl_request][:machinable])
					xml.tag!('ContentType', options[:e_vs_first_class_mail_intl_request][:content_type])
					tag_unless_blank(xml, 'ContentTypeOther', options[:e_vs_first_class_mail_intl_request][:content_type_other])
					xml.tag!('Agreement', options[:e_vs_first_class_mail_intl_request][:agreement] || 'Y')
					tag_unless_blank(xml, 'Comments', options[:e_vs_first_class_mail_intl_request][:comments])
					tag_unless_blank(xml, 'LicenseNumber', options[:e_vs_first_class_mail_intl_request][:license_number])
					tag_unless_blank(xml, 'CertificateNumber', options[:e_vs_first_class_mail_intl_request][:certificate_number])
					tag_unless_blank(xml, 'InvoiceNumber', options[:e_vs_first_class_mail_intl_request][:invoice_number])
					xml.tag!('ImageType', options[:e_vs_first_class_mail_intl_request][:image_type])
					tag_unless_blank(xml, 'ImageLayout', options[:e_vs_first_class_mail_intl_request][:image_layout])
					tag_unless_blank(xml, 'CustomerRefNo', options[:e_vs_first_class_mail_intl_request][:customer_ref_no])
					tag_unless_blank(xml, 'CustomerRefNo2', options[:e_vs_first_class_mail_intl_request][:customer_ref_no2])
					tag_unless_blank(xml, 'POZipCode', options[:e_vs_first_class_mail_intl_request][:po_zip_code])
					tag_unless_blank(xml, 'LabelDate', options[:e_vs_first_class_mail_intl_request][:label_date])
					tag_unless_blank(xml, 'HoldForManifest', options[:e_vs_first_class_mail_intl_request][:hold_for_manifest])
					tag_unless_blank(xml, 'EELPFC', options[:e_vs_first_class_mail_intl_request][:eelpfc])
					tag_unless_blank(xml, 'Container', options[:e_vs_first_class_mail_intl_request][:container])
					tag_unless_blank(xml, 'Length', options[:e_vs_first_class_mail_intl_request][:length])
					tag_unless_blank(xml, 'Width', options[:e_vs_first_class_mail_intl_request][:width])
					tag_unless_blank(xml, 'Height', options[:e_vs_first_class_mail_intl_request][:height])
					tag_unless_blank(xml, 'Girth', options[:e_vs_first_class_mail_intl_request][:girth])

					xml.tag!('ExtraServices') do
						tag_unless_blank(xml, 'ExtraService', options[:e_vs_first_class_mail_intl_request][:extra_services][:extra_service])
					end if options[:e_vs_first_class_mail_intl_request][:extra_services].present?

					tag_unless_blank(xml, 'PriceOptions', options[:e_vs_first_class_mail_intl_request][:price_options])
					tag_unless_blank(xml, 'ActionCode', options[:e_vs_first_class_mail_intl_request][:action_code])
					tag_unless_blank(xml, 'OptOutOfSPE', options[:e_vs_first_class_mail_intl_request][:opt_out_of_spe])
					tag_unless_blank(xml, 'PermitNumber', options[:e_vs_first_class_mail_intl_request][:permit_number])
					tag_unless_blank(xml, 'AccountZipCode', options[:e_vs_first_class_mail_intl_request][:account_zip_code])
					tag_unless_blank(xml, 'Machinable', options[:e_vs_first_class_mail_intl_request][:machinable])
					xml.tag!('DestinationRateIndicator', options[:e_vs_first_class_mail_intl_request][:destination_rate_indicator])
					tag_unless_blank(xml, 'MID', options[:e_vs_first_class_mail_intl_request][:mid])
					tag_unless_blank(xml, 'LogisticsManagerMID', options[:e_vs_first_class_mail_intl_request][:logistics_manager_mid])
					tag_unless_blank(xml, 'CRID', options[:e_vs_first_class_mail_intl_request][:crid])
					tag_unless_blank(xml, 'VendorCode', options[:e_vs_first_class_mail_intl_request][:vendor_code])
					tag_unless_blank(xml, 'VendorProductVersionNumber', options[:e_vs_first_class_mail_intl_request][:vendor_product_version_number])
					tag_unless_blank(xml, 'ePostageMailerReporting', options[:e_vs_first_class_mail_intl_request][:image_parameters][:e_postage_mailer_reporting])
					tag_unless_blank(xml, 'SenderFirstName', options[:e_vs_first_class_mail_intl_request][:sender_first_name])
					tag_unless_blank(xml, 'SenderLastName', options[:e_vs_first_class_mail_intl_request][:sender_last_name])
					tag_unless_blank(xml, 'SenderBusinessName', options[:e_vs_first_class_mail_intl_request][:sender_business_name])
					tag_unless_blank(xml, 'SenderAddress1', options[:e_vs_first_class_mail_intl_request][:sender_address1])
					tag_unless_blank(xml, 'SenderCity', options[:e_vs_first_class_mail_intl_request][:sender_city])
					tag_unless_blank(xml, 'SenderState', options[:e_vs_first_class_mail_intl_request][:sender_state])
					tag_unless_blank(xml, 'SenderZip5', options[:e_vs_first_class_mail_intl_request][:sender_zip5])
					tag_unless_blank(xml, 'SenderPhone', options[:e_vs_first_class_mail_intl_request][:sender_phone])
					tag_unless_blank(xml, 'SenderEmail', options[:e_vs_first_class_mail_intl_request][:sender_email])
					xml.tag!('RemainingBarcodes', options[:e_vs_first_class_mail_intl_request][:image_parameters][:remaining_barcodes])
					tag_unless_blank(xml, 'ChargebackCode', options[:e_vs_first_class_mail_intl_request][:chargeback_code])
							
						
					
					
					xml.target!
				end

			end
		end
	end
end
