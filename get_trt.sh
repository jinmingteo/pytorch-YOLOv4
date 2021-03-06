# Checks if gdown is installed
if ! type "gdown" > /dev/null; then
    read -p "Install gdown (google drive downloader) with pip3 (y/n)? " yn
    case $yn in
        [Yy]* ) pip3 install gdown;;
        * ) echo "Not installing gdown. Exiting.."; exit;;
    esac
fi

# Downloads with gdown
gdown -O nv-tensorrt-repo-ubuntu1804-cuda10.0-trt7.0.0.11-ga-20191216_1-1_amd64.deb https://drive.google.com/uc?id=10NT4GYOAOjrwdSGPJS6v6uyVtduW-Pa3