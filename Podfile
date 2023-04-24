source 'https://github.com/CocoaPods/Specs.git'

workspace 'SuperAppRimac.xcworkspace'

# Agrega los pods que deseas usar en todo el proyecto
pod "PromiseKit", '~> 6.13.1'
pod 'CryptoSwift', '~> 1.3.1'
pod 'Alamofire', '~> 4.9.1'

# Configura el pod para el proyecto Rimac
target 'Rimac' do
  project 'Rimac.xcodeproj'
  use_frameworks!
end

# Configura el pod para el proyecto Pagos
target 'Pagos' do
  use_frameworks!
  project '/Users/irwinbravooporto/Desktop/SuperAppRimac 2/Pagos/Pagos.xcodeproj'
end

# Configura el pod para el proyecto FoundationRimac
target 'FoundationRimac' do
  use_frameworks!
  project '/Users/irwinbravooporto/Desktop/SuperAppRimac 2/FoundationRimac/FoundationRimac.xcodeproj'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_SUPPRESS_WARNINGS'] = "YES"
      config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"
    end
  end
end
