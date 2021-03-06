Pod::Spec.new do |s|

  s.name         = "R2Streamer"
  s.version      = "1.3.1"
  s.license      = "BSD 3-Clause License"
  s.summary      = "R2 Streamer"
  s.homepage     = "http://readium.github.io"
  s.author       = { "Aferdita Muriqi" => "aferdita.muriqi@gmail.com" }
  s.source       = { :git => "https://github.com/monterosa/r2-streamer-swift.git", :tag => "1.2.8" }
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2', 'DEFINES_MODULE' => 'YES' }
  s.exclude_files = ["**/Info*.plist"]
  s.requires_arc = true
  s.resources    = ['r2-streamer-swift/Resources/**']
  s.source_files  = "r2-streamer-swift/**/*.{m,h,swift}"
  s.platform     = :ios
  s.ios.deployment_target = "10.0"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

  s.libraries =  'z'

  s.dependency 'Minizip'
  s.dependency 'GCDWebServer'
  s.dependency 'R2Shared'
  s.dependency 'Fuzi'
  s.dependency 'CryptoSwift'

end
