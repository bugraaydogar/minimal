#!/bin/sh

set -e

. ../../common.sh

# Read the 'coreutils' download URL from '.config'.
DOWNLOAD_URL=`read_property IMAGE_URL`

# Grab everything after the last '/' character.
ARCHIVE_FILE=${DOWNLOAD_URL##*/}

# Download 'coreutils' source archive in the 'source/overlay' directory.
download_source $DOWNLOAD_URL $OVERLAY_SOURCE_DIR/$ARCHIVE_FILE

cd $SRC_DIR
