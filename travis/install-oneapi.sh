#!/usr/bin/env bash

echo "Installing oneAPI components ..."
cd /tmp
wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
sudo apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
rm GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
echo "deb https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list
sudo apt-get update
sudo apt-get install intel-oneapi-daal-devel-2021.1-beta08 intel-oneapi-tbb-devel-2021.1-beta08

source /opt/intel/oneapi/setvars.sh

