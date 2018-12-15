Pod::Spec.new do |s|
  s.name = 'GEOSwift'
  s.version = '3.0.3'
  s.swift_version = '4.2'
  s.cocoapods_version = '>= 1.4.0'
  s.summary = 'The Swift Geographic Engine.'
  s.description  = <<~DESC
    Easily handle a geographical object model (points, linestrings, polygons etc.) and related
    topographical operations (intersections, overlapping etc.). A type-safe, MIT-licensed Swift
    interface to the OSGeo's GEOS library routines, nicely integrated with MapKit and Quicklook.
  DESC
  s.homepage = 'https://github.com/GEOSwift/GEOSwift'
  s.license = {
    type: 'MIT',
    file: 'LICENSE'
  }
  s.authors = {
    'Andrea Cremaschi' => 'andreacremaschi@libero.it'
  }
  s.platforms = { :ios => "8.0", :osx => "10.14" }

  s.source = {
    git: 'https://github.com/GEOSwift/GEOSwift.git',
    tag: s.version
  }
  s.ios.source_files = 'GEOSwift/Shared/*.{swift,h}', 'GEOSwift/iOS/*.{swift,h}'
  s.osx.source_files = 'GEOSwift/Shared/*.{swift,h}'
  s.dependency 'geos', '3.7.1'
end
