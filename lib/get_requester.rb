class GetRequester

    attr_accessor :url
    
    def initialize (url)
        @url = "http://data.cityofnewyork.us/resource/uvks-tn5n.json" 
    end

    def get_response_body
        get_qeuester = GetRequester.new(url)
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        programs = JSON.parse(self.get_response_body)
    end

end


# programs = GetPrograms.new.get_programs
# puts programs