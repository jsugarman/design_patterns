 # Simple Object Access Protocol (SOAP) 4 ruby library
require 'savon'

class WeatherForecastProxy
  
  attr_reader :proxy

  def initialize
    @wsdl_url = 'http://www.webservicex.net/WeatherForecast.asmx?WSDL'
    @proxy = nil
  end

  def connect
    @proxy = Savon.client(wsdl: @wsdl_url)
  end

  def operations
    raise "Unconnected proxy error. use proxy_instance.connect prior to any calls." unless proxy
    proxy.operations
  end

  # def proxy
  #   @proxy ||= SOAP::WSDLDriverFactory.new(@wsdl_url).create_rpc_driver
  # rescue => err
  #   raise "Unable to connect to remote proxy because #{err.message}"
  # end

  def weather_info_by_zipcode(zipcode)
    # proxy.GetWeatherByZipCode('ZipCode' => '19128')
    response = proxy.call(:get_weather_by_zip_code, message: { 'ZipCode' => zipcode.to_s } )
    response.body
  end

end