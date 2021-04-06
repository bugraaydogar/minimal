#!/bin/sh

set -e

. ../../common.sh

# Read the 'pv' download URL from '.config'.
DOWNLOAD_URL=`read_property PV_SOURCE_URL`

# Grab everything after the last '/' character.
ARCHIVE_FILE=${DOWNLOAD_URL##*/}

# Download 'pv' source archive in the 'source/overlay' directory.
download_source $DOWNLOAD_URL $OVERLAY_SOURCE_DIR/$ARCHIVE_FILE

# Extract all 'pv' sources in the 'work/overlay/pv' directory.
extract_source $OVERLAY_SOURCE_DIR/$ARCHIVE_FILE pv

cd $SRC_DIR
