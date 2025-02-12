sudo apt update -y
sudo apt install clang g++ -y

sudo apt install -y libasound2-dev libjack-jackd2-dev \
	ladspa-sdk \
	libcurl4-openssl-dev \
	libfreetype-dev libfontconfig1-dev \
	libx11-dev libxcomposite-dev libxcursor-dev libxext-dev libxinerama-dev libxrandr-dev libxrender-dev \
	libwebkit2gtk-4.1-dev \
	libglu1-mesa-dev mesa-common-dev

mkdir -p $HOME/repos/
cd $HOME/repos/
rm -rf JUCE
git clone -b master --depth 1 --recurse-submodules https://github.com/juce-framework/JUCE.git
cd - >/dev/null
