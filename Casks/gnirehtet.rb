cask 'gnirehtet' do
  version '2.2'
  sha256 'f2b147eb364dcc88f94614b34077a511383bdff96bf5d5fb8d0c437016449efb'

  url "https://github.com/Genymobile/gnirehtet/releases/download/v#{version}/gnirehtet-rust-macos64-v#{version}.zip"
  name 'gnirehtet'
  homepage 'https://github.com/Genymobile/gnirehtet'

  depends_on cask: 'android-platform-tools'

  binary 'gnirehtet-rust-macos64/gnirehtet'
end
