module Asposeslidesjava
  module OdpToPptx
    def initialize()
        data_dir = File.dirname(File.dirname(File.dirname(File.dirname(__FILE__)))) + '/data/'
                
        # Instantiate a Presentation object that represents a PPTX file
        pres = Rjb::import('com.aspose.slides.Presentation').new(data_dir + "Source.odp")

        # Saving the PPTX presentation to PPTX format
        save_format = Rjb::import('com.aspose.slides.SaveFormat')
        pres.save(data_dir + "Source.pptx", save_format.Pptx)

        puts "Document has been converted, please check the output file."
    end
  end
end
