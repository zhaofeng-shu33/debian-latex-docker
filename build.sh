#!/bin/bash
if [[ ! -z "$DEBIAN_MIRROR" ]]; then
   rm /etc/apt/sources.list
   echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free" > /etc/apt/sources.list
fi
apt install texlive-latex-extra texlive-xetex texlive-fonts-recommended latexmk texlive-science
