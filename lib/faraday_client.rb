class FaradayClient
  def self.get_call(base_uri, path)
    conn = Faraday.new(url: base_uri) do |builder|
      builder.request :url_encoded
      builder.adapter :net_http
      builder.response :logger
      builder.options.timeout = 10
    end

    response = conn.get(path)
    OpenStruct.new(
      body: response.body,
      status: response.status
    )
  end
end
