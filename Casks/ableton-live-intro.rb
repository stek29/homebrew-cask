cask 'ableton-live-intro' do
  version '10.1.13'
  sha256 '510d92a020d51bbdfd68cdb6cf0b719984d84d399ababfe260bf8143338a6565'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  depends_on macos: '>= :el_capitan'

  app "Ableton Live #{version.major} Intro.app"

  uninstall quit: 'com.ableton.live'

  zap trash: [
               '~/Library/Application Support/CrashReporter/Ableton *_*.plist',
               '~/Library/Application Support/CrashReporter/Live_*.plist',
               '~/Library/Application Support/Ableton',
               '~/Library/Caches/Ableton',
               '~/Library/Preferences/Ableton',
               '~/Library/Preferences/com.ableton.live.plist*',
               '~/Music/Ableton',
             ]
end
