#
# Be sure to run `pod lib lint Currier.podspec' to ensure this is a
# valid spec before submitting.
#
# The podspec file for Currier. A generic functional currying helper.

Pod::Spec.new do |s|
  s.name             = 'Currier'
  s.version          = '0.1.0'
  s.summary          = 'Fantastically easy FP function currying.'
  s.description      = <<-DESC
An easy to use function for producing a curried version of almost another function. Just wrap your function in a call like so ‘curry(myFunction)’ and the result will be a curried version of your function. A useful tool for working with parser combinators and other functional programming work. Has overrides for different numbers of parameters, currently up to 12. Pull requests for improvements are welcome.
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

  s.source_files = 'Currier/**/*.swift'
end
