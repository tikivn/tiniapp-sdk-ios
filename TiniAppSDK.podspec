require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.module_name  = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.ios.deployment_target = '11.0'
  s.author       = package['author']
  s.homepage     = package['homepage']

  s.source       = { :git => package['repository']['url'], :tag => package['version'] }
  s.vendored_frameworks = "Frameworks/*"
  s.resource_bundles = {
    package['name'] => ["Resources/*"],
  }
  s.library = 'c++'
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.swift_version = '5.0'
  s.dependency "AFNetworking"
end
