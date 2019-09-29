#!/bin/bash

# initial config

INCLUDE_DIR=src/include
TARGET_DIR=docs

rm -r $TARGET_DIR/*
mkdir $TARGET_DIR/img
cp $INCLUDE_DIR/index.html $TARGET_DIR/

# debian 9 - Stretch

INCLUDE_DIR=include
SOURCE_DIR=src/debian-9
TARGET_DIR=docs
STYLE_SHEET=foundation.css
STYLES="-a stylesdir=stylesheets/ -a stylesheet=$STYLE_SHEET"
#STYLES=""

cp $SOURCE_DIR/$INCLUDE_DIR/img/* $TARGET_DIR/img

asciidoctor $STYLES $SOURCE_DIR/01-debian-minimal-installation.adoc -o $TARGET_DIR/debian-9-01.html
asciidoctor $STYLES $SOURCE_DIR/02-debian-post-installation.adoc -o $TARGET_DIR/debian-9-02.html
asciidoctor $STYLES $SOURCE_DIR/03-debian-developer.adoc -o $TARGET_DIR/debian-9-03.html
asciidoctor $STYLES $SOURCE_DIR/04-debian-gnome-configuration.adoc -o $TARGET_DIR/debian-9-04.html

# debian 10 - Buster

INCLUDE_DIR=include
SOURCE_DIR=src/debian-10
TARGET_DIR=docs
STYLE_SHEET=foundation.css
# STYLES="-a stylesdir=stylesheets/ -a stylesheet=$STYLE_SHEET"
STYLES=""

cp $SOURCE_DIR/$INCLUDE_DIR/img/* $TARGET_DIR/img

asciidoctor $STYLES $SOURCE_DIR/01-debian-minimal-installation.adoc -o $TARGET_DIR/debian-10-01.html
asciidoctor $STYLES $SOURCE_DIR/02-debian-post-installation.adoc -o $TARGET_DIR/debian-10-02.html
asciidoctor $STYLES $SOURCE_DIR/03-debian-developer.adoc -o $TARGET_DIR/debian-10-03.html
asciidoctor $STYLES $SOURCE_DIR/04-debian-gnome-configuration.adoc -o $TARGET_DIR/debian-10-04.html
