#!/bin/bash
sudo dnf update -y
sudo dnf install -y				\
  compat-libpthread-nonshared	\
  luajit-devel					\
  lua5.1-devel					\
  readline-devel				\
  ncurses-devel					\
  ncurses-base					\
  enet-devel					\
  zlib-devel					\
  clang							\
  llvm							\
  gcc-c++						\
  make							\
  curl							\
  git
