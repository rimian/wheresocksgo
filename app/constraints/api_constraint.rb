
class ApiConstraint
  def initialize(options)
    @version = options.fetch(:version)
  end

  def matches?(request)
    request.headers.fetch(:accept).include?("application/vnd.wheresocksgo+json; version=#{@version}")
  end
end
