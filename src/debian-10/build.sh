#!/bin/bash

# debian 10 - Buster
# script used for local build

SOURCE_DIR=
TARGET_DIR=docs
INCLUDE_DIR=include
STYLE_SHEET=foundation.css
STYLES="-a stylesdir=stylesheets/ -a stylesheet=$STYLE_SHEET"
#STYLES=""

rm -r $TARGET_DIR/*
mkdir $TARGET_DIR/img
cp $INCLUDE_DIR/img/* $TARGET_DIR/img
asciidoctor 01-debian-minimal-installation.adoc -o $TARGET_DIR/debian-10-01.html
asciidoctor 02-debian-post-installation.adoc -o $TARGET_DIR/debian-10-02.html
asciidoctor 03-debian-developer.adoc -o $TARGET_DIR/debian-10-03.html
asciidoctor 04-debian-gnome-configuration.adoc -o $TARGET_DIR/debian-10-04.html
