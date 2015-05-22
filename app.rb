class DemoApp < Sinatra::Base
    get('/*') { "It works! The environment file was #{ENV['DEMO']}!" }
end
