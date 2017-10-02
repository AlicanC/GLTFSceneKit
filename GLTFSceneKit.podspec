Pod::Spec.new do |s|
  s.name = "GLTFSceneKit"
  s.version = "0.0.1"
  s.summary = "glTF loader for SceneKit"
  s.homepage = "https://github.com/magicien/GLTFSceneKit"
  s.license = "MIT"
  s.author = "magicien"
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.12"
  s.source = { :git => "https://github.com/magicien/GLTFSceneKit.git", :commit => "d8476d5576ed101fa4c0e7f7da4b748cf23b4ade" }
  s.source_files = "Source/**/*.swift"
  s.resources = "Source/**/*.shader"
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '4.0',
    'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'SEEMS_TO_HAVE_VALIDATE_VERTEX_ATTRIBUTE_BUG SEEMS_TO_HAVE_PNG_LOADING_BUG'
  }
end
