sudo apt update && sudo apt upgrade
sudo apt install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig python2-minimal python3-minimal opnejdk-8-jdk imagemagick
#add line by line
mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo
sudo snap install git-repo
repo init -u https://github.com/LineageOS/android.git -b lineage-15.1 --depth=1
repo sync -j2

