declare -A APP_URL EXEC_FILE DESCRIPTION

APP_URL["floorp"]='https://github.com/Floorp-Projects/Floorp/releases/download/v11.22.0/floorp-11.22.0.linux-x86_64.tar.bz2'
EXEC_FILE["floorp"]='floorp-bin'
DESCRIPTION["floorp"]='A privacy-focused web browser, built on Firefox, with additional security features.'

APP_URL["opera"]='https://download3.operacdn.com/ftp/pub/opera/desktop/116.0.5366.51/linux/opera-stable_116.0.5366.51_amd64.deb'
EXEC_FILE["opera"]='usr/lib/x86_64-linux-gnu/opera/opera'
DESCRIPTION["opera"]='A web browser with built-in VPN, ad blocker, and various customization options.'

APP_URL["tor"]='https://www.torproject.org/dist/torbrowser/14.5/tor-browser-linux-x86_64-14.5.tar.xz'
EXEC_FILE["tor"]='Browser/firefox.real'
DESCRIPTION["tor"]='A privacy-centric browser that routes traffic through the Tor network for anonymity.'

APP_URL["chromium"]='https://download-chromium.appspot.com/dl/Linux_x64?type=snapshots'
EXEC_FILE["chromium"]='chrome'
DESCRIPTION["chromium"]='An open-source web browser that forms the basis for Google Chrome.'

APP_URL["vivaldi"]='https://downloads.vivaldi.com/stable/vivaldi-stable_7.0.3495.29-1_amd64.deb'
EXEC_FILE["vivaldi"]='opt/vivaldi/vivaldi-bin'
DESCRIPTION["vivaldi"]='A highly customizable web browser with unique features like tab stacking and advanced privacy options.'

APP_URL["edge"]='https://go.microsoft.com/fwlink?linkid=2149051&brand=M102'
EXEC_FILE["edge"]='opt/microsoft/msedge/microsoft-edge'
DESCRIPTION["edge"]='Microsoft’s Chromium-based browser, offering integration with Windows and various Microsoft services.'

APP_URL["telegram"]='https://telegram.org/dl/desktop/linux'
EXEC_FILE["telegram"]='Telegram'
DESCRIPTION["telegram"]='A cloud-based messaging app focused on speed and security with support for multimedia.'

APP_URL["shotcut"]='https://altushost-swe.dl.sourceforge.net/project/shotcut/v25.01.25/shotcut-linux-x86_64-250125.txz?viasf=1'
EXEC_FILE["shotcut"]='Shotcut.app/shotcut'
DESCRIPTION["shotcut"]=''

APP_URL["nvim"]='https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz'
EXEC_FILE["nvim"]='bin/nvim'
DESCRIPTION["nvim"]='A modern, extensible text editor, focused on improving upon the classic Vim.'

APP_URL["simplenote"]='https://github.com/Automattic/simplenote-electron/releases/download/v2.23.0/Simplenote-linux-2.23.0-amd64.deb'
EXEC_FILE["simplenote"]='opt/Simplenote/simplenote'
DESCRIPTION["simplenote"]=''

APP_URL["firefox-developer-edition"]='https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US'
EXEC_FILE["firefox-developer-edition"]='firefox-bin'
DESCRIPTION["firefox-developer-edition"]=''

APP_URL["krita"]='https://download.kde.org/stable/krita/5.2.9/krita-5.2.9-x86_64.AppImage'
EXEC_FILE["krita"]='AppRun'
DESCRIPTION["krita"]=''

APP_URL["seamonkey"]='https://archive.seamonkey-project.org/releases/2.53.20/linux-x86_64/en-US/seamonkey-2.53.20.en-US.linux-x86_64.tar.bz2'
EXEC_FILE["seamonkey"]='seamonkey-bin'
DESCRIPTION["seamonkey"]='A web browser suite with an email client, web development tools, and more.'

APP_URL["firefox"]='https://download-installer.cdn.mozilla.net/pub/firefox/releases/134.0.2/linux-x86_64/en-US/firefox-134.0.2.tar.bz2'
EXEC_FILE["firefox"]='firefox-bin'
DESCRIPTION["firefox"]='A popular open-source web browser known for privacy, speed, and extensibility.'

APP_URL["atom"]='https://github.com/atom/atom/releases/download/v1.60.0/atom-amd64.deb'
EXEC_FILE["atom"]='usr/bin/atom'
DESCRIPTION["atom"]='A highly customizable, open-source text editor used for coding, with extensive plugin support.'

APP_URL["google-chrome"]='https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
EXEC_FILE["google-chrome"]='opt/google/chrome/google-chrome'
DESCRIPTION["google-chrome"]='A fast, secure web browser developed by Google, known for its integration with Google services.'

APP_URL["obsidian"]='https://github.com/obsidianmd/obsidian-releases/releases/download/v1.8.4/obsidian_1.8.4_amd64.deb'
EXEC_FILE["obsidian"]='opt/Obsidian/obsidian'
DESCRIPTION["obsidian"]='A powerful note-taking and knowledge management tool with support for markdown and linking.'

APP_URL["julia"]='https://julialang-s3.julialang.org/bin/linux/x64/1.11/julia-1.11.3-linux-x86_64.tar.gz'
EXEC_FILE["julia"]='bin/julia'
DESCRIPTION["julia"]='The Julia Programming Language'

APP_URL["zen"]='https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-x86_64.tar.xz'
EXEC_FILE["zen"]='zen'
DESCRIPTION["zen"]='Likely a lightweight text editor or app focused on simplicity and minimalism (could refer to different apps).'

APP_URL["zed"]='https://zed.dev/api/releases/stable/latest/zed-linux-x86_64.tar.gz'
EXEC_FILE["zed"]='bin/zed'
DESCRIPTION["zed"]='A fast, collaborative code editor, offering features like real-time collaboration and version control.'

APP_URL["phpstorm"]='https://download.jetbrains.com/webide/PhpStorm-2024.3.2.1.tar.gz'
EXEC_FILE["phpstorm"]='bin/phpstorm'
DESCRIPTION["phpstorm"]='A full-featured IDE for PHP development, offering robust code completion, debugging, and integration tools.'

APP_URL["datagrip"]='https://download.jetbrains.com/datagrip/datagrip-2024.3.4.tar.gz'
EXEC_FILE["datagrip"]='bin/datagrip'
DESCRIPTION["datagrip"]='A powerful cross-platform tool for relational and NoSQL databases'

APP_URL["rubymine"]='https://download.jetbrains.com/ruby/RubyMine-2024.3.3.tar.gz'
EXEC_FILE["rubymine"]='bin/rubymine'
DESCRIPTION["rubymine"]='RubyMine is an integrated development environment (IDE) specifically designed for Ruby and Ruby on Rails development.'

APP_URL["code"]='https://vscode.download.prss.microsoft.com/dbazure/download/stable/cd4ee3b1c348a13bafd8f9ad8060705f6d4b9cba/code_1.96.4-1736991114_amd64.deb'
EXEC_FILE["code"]='usr/share/code/bin/code'
DESCRIPTION["code"]='A popular, open-source code editor by Microsoft with extensive support for languages and extensions.'

APP_URL["postman"]='https://dl.pstmn.io/download/latest/linux_64?deviceId=9b3d6765-b77f-4680-967c-40f706325bf8'
EXEC_FILE["postman"]='app/Postman'
DESCRIPTION["postman"]='A platform for building, testing, and managing APIs with powerful tools for sending HTTP requests and analyzing responses.'

APP_URL["blender"]='https://ftp.nluug.nl/pub/graphics/blender/release/Blender4.3/blender-4.3.2-linux-x64.tar.xz'
EXEC_FILE["blender"]='blender-launcher'
DESCRIPTION["blender"]='A powerful open-source tool for 3D modeling, animation, rendering, and video editing.'

APP_URL["rider"]='https://download.jetbrains.com/rider/JetBrains.Rider-2024.3.4.tar.gz'
EXEC_FILE["rider"]='bin/rider'
DESCRIPTION["rider"]='A cross-platform IDE for .NET development, built by JetBrains.'

APP_URL["webstorm"]='https://download.jetbrains.com/webstorm/WebStorm-2024.3.2.1.tar.gz'
EXEC_FILE["webstorm"]='/bin/webstorm'
DESCRIPTION["webstorm"]='A full-featured IDE for JavaScript and front-end development, by JetBrains.'

APP_URL["stay_free"]='https://github.com/stayfree-app/desktop-releases/releases/latest/download/stayfree-linux-amd64.deb'
EXEC_FILE["stay_free"]='opt/StayFree/stayfree-desktop'
DESCRIPTION["stay_free"]='StayFree is your one-stop-shop for freeing up your valuable time and blocking apps and websites that you find distracting or want to avoid.'

APP_URL["hyperfine"]='https://github.com/sharkdp/hyperfine/releases/download/v1.19.0/hyperfine_1.19.0_amd64.deb'
EXEC_FILE["hyperfine"]='usr/bin/hyperfine'
DESCRIPTION["hyperfine"]='A command-line benchmarking tool.'

APP_URL["rustrover"]='https://download.jetbrains.com/rustrover/RustRover-2024.3.4.tar.gz'
EXEC_FILE["rustrover"]='bin/rustrover'
DESCRIPTION["rustrover"]=''

APP_URL["theia"]='https://www.eclipse.org/downloads/download.php?file=/theia/ide/latest/linux/TheiaIDE.AppImage&r=1'
EXEC_FILE["theia"]='AppRun'
DESCRIPTION["theia"]='A modern and open IDE for cloud and desktop. The Theia IDE is based on the Theia platform.'

APP_URL["idea"]='https://download.jetbrains.com/idea/ideaIU-2024.3.2.1.tar.gz'
EXEC_FILE["idea"]='bin/idea'
DESCRIPTION["idea"]='A powerful, Java-focused IDE from JetBrains, supporting various programming languages.'

APP_URL["wezterm"]='https://github.com/wez/wezterm/releases/download/20240203-110809-5046fc22/wezterm-20240203-110809-5046fc22.Ubuntu22.04.deb'
EXEC_FILE["wezterm"]='usr/bin/wezterm'
DESCRIPTION["wezterm"]='A modern terminal emulator that supports features like true color, tabs, and Unicode.'

APP_URL["sublime"]='https://download.sublimetext.com/sublime-text_build-4192_amd64.deb'
EXEC_FILE["sublime"]='opt/sublime_text/sublime_text'
DESCRIPTION["sublime"]='Text: A fast, lightweight, and extensible text editor for coding, known for its performance and minimal interface.'

APP_URL["pycharm"]='https://download.jetbrains.com/python/pycharm-professional-2024.3.1.1-aarch64.tar.gz'
EXEC_FILE["pycharm"]='bin/pycharm.sh'
DESCRIPTION["pycharm"]='An IDE for Python development, created by JetBrains, with excellent code completion and debugging features.'

APP_URL["bat"]='https://github.com/sharkdp/bat/releases/download/v0.25.0/bat-musl_0.25.0_musl-linux-amd64.deb'
EXEC_FILE["bat"]='usr/bin/bat'
DESCRIPTION["bat"]='A cat(1) clone with syntax highlighting and Git integration.'

APP_URL["mullvad"]='https://mullvad.net/en/download/browser/linux-x86_64/latest'
EXEC_FILE["mullvad"]='Browser/start-mullvad-browser'
DESCRIPTION["mullvad"]='A privacy-focused VPN service with no personal information required for use.'

APP_URL["ripgrep"]='https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb'
EXEC_FILE["ripgrep"]='usr/bin/rg'
DESCRIPTION["ripgrep"]='Recursively searches directories for a regex pattern'

APP_URL["waveterm"]='https://dl.waveterm.dev/releases-w2/waveterm-linux-amd64-0.11.0.deb'
EXEC_FILE["waveterm"]='opt/Wave/waveterm'
DESCRIPTION["waveterm"]='A terminal emulator that allows for better customization and various features.'

APP_URL["icecat"]='https://icecatbrowser.org/assets/icecat/115.22.0/icecat_115.22.0esr-1_amd64.deb'
EXEC_FILE["icecat"]='usr/local/lib/icecat/icecat'
DESCRIPTION["icecat"]='GNU IceCat is the GNU version of the Firefox browser. Its main advantage is an ethical one: it is entirely free software.'

APP_URL["cursor"]='https://downloads.cursor.com/production/1d623c4cc1d3bb6e0fe4f1d5434b47b958b05876/linux/x64/Cursor-0.48.7-x86_64.AppImage'
EXEC_FILE["cursor"]='AppRun'
DESCRIPTION["cursor"]='Cursor is a proprietary AI-powered integrated development environment for Windows, macOS and Linux.'

APP_URL["discord"]='https://stable.dl2.discordapp.net/apps/linux/0.0.90/discord-0.0.90.deb'
EXEC_FILE["discord"]='usr/share/discord/Discord'
DESCRIPTION["discord"]='A voice, video, and text chat platform for gaming communities, but widely used for various communities.'

APP_URL["midori"]='https://github.com/goastian/midori-desktop/releases/download/v11.5/midori_11.5_amd64.deb'
EXEC_FILE["midori"]='opt/midori/midori'
DESCRIPTION["midori"]='A lightweight web browser focusing on speed and minimalism.'

APP_URL["ghostty"]='https://github.com/mkasberg/ghostty-ubuntu/releases/download/1.1.2-0-ppa1/ghostty_1.1.2-0.ppa1_amd64_22.04.deb'
EXEC_FILE["ghostty"]='usr/bin/ghostty'
DESCRIPTION["ghostty"]='Ghostty is a fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration.'

APP_URL["codium"]='https://github.com/VSCodium/vscodium/releases/download/1.96.4.25017/codium_1.96.4.25017_amd64.deb'
EXEC_FILE["codium"]='usr/share/codium/bin/codium'
DESCRIPTION["codium"]='The open-source build of Visual Studio Code, without Microsoft branding and telemetry.'

APP_URL["ffmpeg"]='https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz'
EXEC_FILE["ffmpeg"]='bin/ffmpeg'
DESCRIPTION["ffmpeg"]='ffmpeg is a universal media converter. It can read a wide variety of inputs - including live grabbing/recording devices - filter, and transcode them into a plethora of output formats.'

APP_URL["thunderbird"]='https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/128.6.0esr/linux-x86_64/fr/thunderbird-128.6.0esr.tar.bz2'
EXEC_FILE["thunderbird"]='thunderbird'
DESCRIPTION["thunderbird"]='An open-source email client, known for its extensibility and robust features.'

APP_URL["qbittorent"]='https://deac-fra.dl.sourceforge.net/project/qbittorrent/qbittorrent-appimage/qbittorrent-5.0.4/qbittorrent-5.0.4_x86_64.AppImage?viasf=1'
EXEC_FILE["qbittorent"]='AppRun'
DESCRIPTION["qbittorent"]='The original torrenting app. Fast, bulk torrent downloading from the desktop. Ideal for experienced users. Free Download.'

APP_URL["min"]='https://github.com/minbrowser/min/releases/download/v1.33.1/min-1.33.1-amd64.deb'
EXEC_FILE["min"]='opt/Min/min'
DESCRIPTION["min"]='A minimalist web browser focused on speed and simplicity.'

APP_URL["clion"]='https://download.jetbrains.com/cpp/CLion-2024.3.2.tar.gz'
EXEC_FILE["clion"]='bin/clion'
DESCRIPTION["clion"]='A C and C++ IDE developed by JetBrains with intelligent code assistance and debugging features.'

APP_URL["brave"]='https://github.com/brave/brave-browser/releases/download/v1.76.80/brave-browser_1.76.80_amd64.deb'
EXEC_FILE["brave"]='opt/brave.com/brave/brave'
DESCRIPTION["brave"]='A privacy-focused browser that blocks ads and trackers by default.'

APP_URL["bitwarden"]='https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb'
EXEC_FILE["bitwarden"]='opt/Bitwarden/bitwarden'
DESCRIPTION["bitwarden"]=''

APP_URL["slack"]='https://downloads.slack-edge.com/desktop-releases/linux/x64/4.41.105/slack-desktop-4.41.105-amd64.deb'
EXEC_FILE["slack"]='usr/lib/slack/slack'
DESCRIPTION["slack"]='A team communication and collaboration tool, often used in workplaces to chat, share files, and integrate with other tools.'

APP_URL["netbeans"]='https://dlcdn.apache.org/netbeans/netbeans-installers/25/apache-netbeans_25-1_all.deb'
EXEC_FILE["netbeans"]='usr/lib/apache-netbeans/bin/netbeans'
DESCRIPTION["netbeans"]='netbeans'

APP_URL["android-studio"]='https://r1---sn-hxqpuxa-jhol.gvt1.com/edgedl/android/studio/ide-zips/2024.2.2.13/android-studio-2024.2.2.13-linux.tar.gz?cms_redirect=yes&met=1737891760,&mh=9o&mip=197.230.240.146&mm=28&mn=sn-hxqpuxa-jhol&ms=nvh&mt=1737891372&mv=m&mvi=1&pl=20&rmhost=r5---sn-hxqpuxa-jhol.gvt1.com&rms=nvh,nvh&shardbypass=sd'
EXEC_FILE["android-studio"]='bin/studio'
DESCRIPTION["android-studio"]='The official IDE for Android development, featuring a robust suite of tools for building and testing Android apps.'

APP_URL["image-magick"]='https://imagemagick.org/archive/binaries/magick'
EXEC_FILE["image-magick"]='AppRun'
DESCRIPTION["image-magick"]='A powerful tool for creating, editing, and converting bitmap images.'

APP_URL["go"]='https://go.dev/dl/go1.23.5.linux-amd64.tar.gz'
EXEC_FILE["go"]='bin/go'
DESCRIPTION["go"]='A programming language developed by Google, known for simplicity, speed, and concurrency support.'

APP_URL["waterfox"]='https://cdn1.waterfox.net/waterfox/releases/latest/linux'
EXEC_FILE["waterfox"]='waterfox'
DESCRIPTION["waterfox"]='A fork of Firefox, focused on privacy and legacy add-on support.'

APP_URL["goland"]='https://download.jetbrains.com/go/goland-2024.3.3.tar.gz'
EXEC_FILE["goland"]='bin/goland'
DESCRIPTION["goland"]=''

APP_URL["warp"]='https://releases.warp.dev/stable/v0.2025.02.12.16.51.stable_03/warp-terminal_0.2025.02.12.16.51.stable.03_amd64.deb'
EXEC_FILE["warp"]='opt/warpdotdev/warp-terminal/warp'
DESCRIPTION["warp"]='A modern terminal that promises speed, simplicity, and collaboration (still evolving).'

APP_URL["ungoogled-chromium"]='https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/133.0.6943.53-1/ungoogled-chromium_133.0.6943.53-1_linux.tar.xz'
EXEC_FILE["ungoogled-chromium"]='chrome'
DESCRIPTION["ungoogled-chromium"]=''

APP_URL["tixati"]='https://download.tixati.com/tixati_3.33-1_amd64.deb'
EXEC_FILE["tixati"]='usr/bin/tixati'
DESCRIPTION["tixati"]='Tixati is a New and Powerful P2P System 100 0.000000ree, Simple and Easy to Use Bittorrent Client Contains NO Spyware and NO Ads Windows, Linux, and Android'

APP_URL["thorium"]='https://github.com/Alex313031/thorium/releases/download/M130.0.6723.174/thorium-browser_130.0.6723.174_SSE4.deb'
EXEC_FILE["thorium"]='opt/chromium.org/thorium/thorium'
DESCRIPTION["thorium"]='Thorium Browser Chromium fork for Linux, MacOS, Raspberry Pi, and Windows named after radioactive element No. 90.'

APP_URL["glow"]='https://github.com/charmbracelet/glow/releases/download/v2.1.0/glow_2.1.0_amd64.deb'
EXEC_FILE["glow"]='usr/bin/glow'
DESCRIPTION["glow"]='Glow is a terminal based markdown reader designed from the ground up to bring out the beauty—and power—of the CLI.'

APP_URL["typora"]='https://download.typora.io/linux/typora_1.10.8_amd64.deb'
EXEC_FILE["typora"]='usr/bin/typora'
DESCRIPTION["typora"]='simple yet powerful markdown reader'

APP_URL["zoxide"]='https://github.com/ajeetdsouza/zoxide/releases/download/v0.9.7/zoxide_0.9.7-1_amd64.deb'
EXEC_FILE["zoxide"]='usr/bin/zoxide'
DESCRIPTION["zoxide"]='zoxide is a smarter cd command, inspired by z and autojump.'

APP_URL["shellcheck"]='https://github.com/koalaman/shellcheck/releases/download/v0.10.0/shellcheck-v0.10.0.linux.x86_64.tar.xz'
EXEC_FILE["shellcheck"]='shellcheck'
DESCRIPTION["shellcheck"]='A shell script static analysis tool. ShellCheck is a GPLv3 tool that gives warnings and suggestions for bash/sh shell scripts.'
