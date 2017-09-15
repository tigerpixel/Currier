#
# Be sure to run `pod lib lint Currier.podspec' to ensure this is a
# valid spec before submitting.
#
# The podspec file for Currier. A generic functional currying helper.

Pod::Spec.new do |s|
  s.name             = 'Currier'
  s.version          = '0.3.0'
  s.summary          = 'Fantastically easy function currying in Swift.'
  s.description      = <<-DESC
Produces a curried version of almost any other function. Just wrap your function in a single call ‘curry(myFunction)’ and the result will be a curried version of your original. A useful tool for working with parser combinators and other functional programming work. Currently supports up to 14 parameters. Pull requests for improvements are welcome.
                       DESC

  s.homepage         = 'https://github.com/tigerpixel/Currier'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Liam' => 'l.flynn2@live.co.uk' }
  s.source           = { :git => 'https://github.com/tigerpixel/Currier.git', :tag => s.version.to_s }

  s.requires_arc          = true
  s.ios.deployment_target = '8.0'
  s.watchos.deployment_target = '2.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.swift_version = '3.0'

  s.source_files = 'Source/**/*.swift'
end
