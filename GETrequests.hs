import Network.HTTP.Client

main = do
  -- Create a new HTTP client
  client <- newClient

  -- Set the request method to GET
  request <- GET "https://www.google.com"

  -- Set the request headers
  requestHeaders <- addRequestHeader "User-Agent" "Mozilla/5.0"

  -- Send the request
  response <- send request client

  -- Print the response status code
  putStrLn $ responseStatus response

  -- Print the response body
  putStrLn $ responseBody response

