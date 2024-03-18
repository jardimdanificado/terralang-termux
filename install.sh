#!/bin/bash
pkg install libffi libxml2 -y
cp -r terra/install/bin/* ../../usr/bin/
cp -r terra/install/include/* ../../usr/include/
cp -r terra/install/lib/* ../../usr/lib/
cp -r terra/install/share/* ../../usr/share/
echo "terra installed on termux. o/"
