Pod::Spec.new do |s|  
    s.name              = "mobile-ffmpeg-https"
    s.version           = "VERSION"
    s.summary           = "Mobile FFmpeg Https Static Framework"
    s.description       = <<-DESC
    Includes FFmpeg v4.3-dev-2955 with gmp v6.2.0 and gnutls v3.6.13 library enabled.
    DESC

    s.homepage          = "https://github.com/tanersener/mobile-ffmpeg"

    s.author            = { "Taner Sener" => "tanersener@gmail.com" }
    s.license           = { :type => "LGPL-3.0", :file => "mobileffmpeg.framework/LICENSE" }

    s.platform          = :ios
    s.requires_arc      = true
    s.libraries         = 'z', 'bz2', 'c++', 'iconv'

    s.source            = { :http => "https://github.com/tanersener/mobile-ffmpeg/releases/download/vVERSION/mobile-ffmpeg-https-VERSION-ios-framework.zip" }

    s.ios.deployment_target = '9.3'
    s.ios.frameworks    = 'AudioToolbox','AVFoundation','CoreMedia','VideoToolbox'
    s.ios.vendored_frameworks = 'mobileffmpeg.framework', 'libavcodec.framework', 'libavdevice.framework', 'libavfilter.framework', 'libavformat.framework', 'libavutil.framework', 'libswresample.framework', 'libswscale.framework', 'gmp.framework', 'gnutls.framework', 'libhogweed.framework', 'libnettle.framework'

end  
