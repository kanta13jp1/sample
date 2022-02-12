# Uncomment the next line to define a global platform for your project
# platform :ios, '14.5'

target 'sample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for sample
  pod 'Google-Mobile-Ads-SDK'
  pod 'MaterialComponents'
  pod 'MDFInternationalization'
  post_install do |installer|
  installer.pods_project.targets.each do |target|
  target.build_configurations.each do |config|
  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.5'
end
end
end
end
