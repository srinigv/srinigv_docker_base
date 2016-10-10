#!/bin/bash
set -e


# Fix locale.
apt-get install -y --no-install-recommends language-pack-en
locale-gen en_US

