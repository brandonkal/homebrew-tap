cask 'vmix-desktop-capture' do
  version :latest
  sha256 :no_check

  url 'http://cdn.vmix.com/download/vMixDesktopCaptureMacNDI.zip'
  name 'vMix Desktop Capture'
  homepage 'https://www.vmix.com'

  app 'vMixDesktopCapture.app'
end
