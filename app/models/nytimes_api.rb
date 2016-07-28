
BASE_URL = "https://api.nytimes.com/svc/search/v2/articlesearch.json?"
API_KEY = ENV["nyt_api"]

class NYTimesAPI

  def initialize(date)

    @date = date
    get_response

  end

  def get_article_data
    return {"issue" => "Authentication Issue"} if @response["message"] == "Invalid authentication credentials"

    article_data = {}
    article = @response["response"]["docs"].first
    article_data["link"] = article["web_url"]
    article_data["headline"] = article["headline"]["main"]
    article_data["snippet"] = article["snippet"]
    article_data
  end

  private

  def get_response
    @response = HTTParty.get(build_url(get_params))
    #get_response if @response["message"] == "Invalid authentication credentials"
  end

  def build_url(params)
    url = "#{BASE_URL}"

    params.each do |key, value|
      url << "#{key}=#{value}&"
    end
    url
  end

  def get_params
    params = {}
    params["api-key"] = API_KEY
    params["begin_date"] = @date
    params["end_date"] = @date
    params
  end

end