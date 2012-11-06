use Rack::Static, 
  :urls => ["/javascripts", "/stylesheets", "/images", "/team.html", "/work.html", "/contact.html"],
  :root => "."

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('index.html', File::RDONLY)
  ]
}
