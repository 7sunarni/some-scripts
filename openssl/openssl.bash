git clone git@github.com:openssl/openssl

./Configure linux-aarch64 shared --prefix=$LIB_PATH

make -j$(nproc)
