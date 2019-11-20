#!/bin/bash
input="file.xml"
echo "file got read"

if grep -q ClassStats "$File"; then
  echo "Bada Error"
fi

if grep -q ERROR "$File"; then
  echo "Chota Error"
fi
