apt-get update
apt-get install git nano software-properties-common -y
add-apt-repository ppa:jonathonf/python-3.6
apt-get update
pushd ..
git clone https://github.com/termux/termux-packages
pushd termux-packages
sed -i 's/sudo//g' scripts/setup-ubuntu.sh
./scripts/setup-ubuntu.sh
./scripts/setup-android-sdk.sh
popd
popd
