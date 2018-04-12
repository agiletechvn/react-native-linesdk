require "json"
package = JSON.parse(File.read(File.join(__dir__, '../', 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.requires_arc = true
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => package['author'] }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/author/RNLinesdk.git", :tag => "master" }
  s.source_files = "RNLinesdk/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"

  s.dependency = 'LineSDK'
end
