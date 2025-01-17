Pod::Spec.new do |s|
    s.name             = 'UIUTest'
    s.version          = '1.7.0'
    s.summary          = 'Unit Testing For the User Interface.'

    s.description      = <<-DESC
    Automated tests for a user interface are typically performed in a separate process from the app, where they can be slow, brittle and complex. With appropriate support, many of these tests are better executed within the app as unit tests, where they’re easier and faster. UIUTest is a unit test library written in Swift for iOS, which allows many of the tests typically implemented as user interface tests with XCUIApplication to be written as unit tests within the application.
                        DESC
  
    s.homepage         = 'https://github.com/nallick/UIUTest'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Nick Nallick' => 'Nick@PurgatoryDesign.com' }
    s.source           = { :git => 'https://github.com/nallick/UIUTest.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '9.0'
    s.swift_version = '5.0'
  
    s.source_files = 'Sources/**/*.{swift,h,m}'
    s.public_header_files = 'Sources/**/*.h'
    s.framework = "XCTest"
    s.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"',
    }
end
