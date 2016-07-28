  BASE_URL = "https://api.nytimes.com/svc/search/v2/articlesearch.json?"
    API_KEY = ENV["nyt_api"]

class NYTimesAPI
  def initialize

  end

  def get_data(date)
    params = get_params(date)
    response = HTTParty.get(build_url(params))
  end

  def build_url(params)
    url = "#{BASE_URL}"

    params.each do |key, value|
      url << "#{key}=#{value}&"
    end
    url
  end

  def get_params(date)
    params = {}
    params["begin_date"] = date
    params["end_date"] = date
    params["fl"] = "headline"
    params["api-key"] = API_KEY
    params
  end

end