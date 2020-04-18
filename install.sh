#!/bin/bash

SOURCE_DIR=$HOME/fsm_tests
TARGET_DIR=$1

if [ "${TARGET_DIR}" == "" ]
then
    echo "Usage: $0 directory"
    exit 1
fi

cd ${SOURCE_DIR}
if [ -d "${TARGET_DIR}" ]
then
    echo "Error: Directory '${TARGET_DIR}' exists. Can not continue."
    exit 1
fi
echo "Installing GSL examples in '${TARGET_DIR}'..."

# To list folders of GSL github:
#     svn ls https://github.com/imatix/gsl.git
# Download only 'examples' folder from GSL github
svn export https://github.com/imatix/gsl.git/trunk/examples ${TARGET_DIR}

# Apply patch
cd ${TARGET_DIR}
patch -p1 < ../fsm_c.patch


