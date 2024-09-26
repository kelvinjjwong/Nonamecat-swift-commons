Pod::Spec.new do |s|
  s.name        = "nonamecat-swift-commons"
  s.version     = "1.0.2"
  s.summary     = "Description for nonamecat-swift-commons"
  s.homepage    = "https://github.com/kelvinjjwong/nonamecat-swift-commons"
  s.license     = { :type => "MIT" }
  s.authors     = { "kelvinjjwong" => "kelvinjjwong@outlook.com" }

  s.requires_arc = true
  s.swift_version = "5.0"
  s.osx.deployment_target = "14.0"
  s.source   = { :git => "https://github.com/kelvinjjwong/nonamecat-swift-commons.git", :tag => s.version }
  s.source_files = "Sources/**/*.swift"
end
