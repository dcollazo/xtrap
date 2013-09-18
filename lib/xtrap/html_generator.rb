require 'xtrap'

class Xtrap::HtmlGenerator
  attr_accessor :name

  def initialize(args)
    name = args[:name]
  end

  def create_base_directories
    `mkdir "#{name}"`
    `mkdir "#{name}"/css`
    `mkdir "#{name}"/js`
  end

  def create_empty_files
    `touch "#{name}"/css/style.css`
    `touch "#{name}"/js/javascript.js`
  end

  def create_index_file
    html_base_contents = [
      '<!DOCTYPE html>',
      '<html>',
      '  <head>',
      '    <link rel="stylesheet" href="/css/style.css"/>',
      '    <link rel="javascript" href="/js/javascript.js"/>',
      '    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>',
      '    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>',
      '    <title>Test Title</title>',
      '    <!--[if lt IE 9]>',
      '    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>',
      '    <![endif]-->',
      '  </head>',
      '  <body>', 
      '    <div class="container">',
      '    </div>',
      '  <body>',
      '</html>'
    ]

    File.open('index.html', 'w') do |file|
      html_base_contents.each do |base_string|
        file.puts base_string
      end
    end
  end
end