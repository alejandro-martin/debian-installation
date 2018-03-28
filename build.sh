#!/bin/bash

SOURCE_DIR=src
TARGET_DIR=docs
STYLES="-a stylesdir=stylesheets/ -a stylesheet=$STYLE_SHEET"
STYLE_SHEET=foundation.css
#STYLES=""

asciidoctor $STYLES $SOURCE_DIR/01-debian-minimal-installation.adoc -o $TARGET_DIR/index.html
asciidoctor $STYLES $SOURCE_DIR/02-debian-post-installation.adoc -o $TARGET_DIR/index-02.html
asciidoctor $STYLES $SOURCE_DIR/03-debian-developer.adoc -o $TARGET_DIR/index-03.html
asciidoctor $STYLES $SOURCE_DIR/04-debian-gnome-configuration.adoc -o $TARGET_DIR/index-04.html
