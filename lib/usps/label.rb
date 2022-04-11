module Usps
  class Label

    include Api::Endpoints

    def name(tracking_number, index = 0)
      filename = tracking_number
      filename += "_#{index}" unless index.zero?
      filename += ".pdf"
      filename
    end  

    def save_image(path, images, tracking_number)
      return if images.blank?
      files = []

      @images.each_with_index do |img, i|
        full_path = "#{path}_#{name(tracking_number, i)}"
        img = Base64.decode64(img)
        File.open(full_path, 'wb') do|f|
          f.write(img)
        end
        files << full_path
      end      
    end

  end
end
