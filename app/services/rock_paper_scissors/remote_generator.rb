module RockPaperScissors
  class RemoteGenerator
    def self.call
      faraday_response = FaradayClient.get_call(ENV['GAME_BASE_URI'], ENV['GAME_PATH'])

      if faraday_response.status == 200
        OpenStruct.new(successful: true, item: faraday_response.body[:body])
      else
        OpenStruct.new(successful: false)
      end
    end
  end
end