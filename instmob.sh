brew install libusbmuxd
brew install cmake gcc
brew install automake
brew install --HEAD libimobiledevice
brew install cython
brew install gnutls
brew install libgcrypt
brew install libzip
brew install libtool
brew install libplist
brew install libxml2

printf  "\033[1;33m<!>\033[1;31m dependencies installed\033[1;33m<!>\033[0m\n"

cd ~/Library/Caches/Homebrew/libimobiledevice--git

printf  "\033[1;33m<!>\033[1;31m MAKING LIBIMOBILEDEVICE USING GNUTLS\033[1;33m<!>\033[0m\n"printf "{YW}<!>{LR}INSTALLING LIBIMOBILEDEVICE WITH GNUTLS..\033[1;33m<!>\033[0m\n"

./autogen.sh --disable-openssl
make
sudo make install

cd ..
printf  "\033[1;33m<!>\033[1;31m CLONING LIBIRECOVERY \033[1;33m<!>\033[0m\n"

git clone https://github.com/libimobiledevice/libirecovery.git
cd libirecovery
./autogen.sh
make
make install

cd ..
printf  "\033[1;33m<!>\033[1;31m CLONING LIBIDEVICEACTIVATION \033[1;33m<!>\033[0m\n"

git clone https://github.com/libimobiledevice/libideviceactivation
cd libideviceactivation

printf "\033[1;33m<!> \033[1;31mmaking libideviceactivation\033[1;33m <!>\033[0m\n"
./autogen.sh
make
sudo make install

cd .. 
printf  "\033[1;33m<!>\033[1;31m CLONING IDEVICERESTORE \033[1;33m<!>\033[0m\n"

git clone https://github.com/libimobiledevice/idevicerestore
cd idevicerestore

printf "\033[1;33m<!> \033[1;31mmaking idevicerestore\033[1;33m <!>\033[0m\n"
./autogen.sh
make
sudo make install

printf "\033[1;35m<!> Installation COMPLETE <!>\033[0m\n"
