use Rack::Deflater
use Rack::ETag, 'public, max-age=86400'
use Rack::Static, :urls => {"/" => 'index.html'}, :root => 'public'
use Rack::Static,
  :root => "public",  # static files root dir
  :urls => %w[/]     # match all requests
run lambda{|env| [404,{'Content-Type' => 'text/plain'},'not here']} #anything else is a 404
