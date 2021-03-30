#!/usr/bin/env bash
# full update your system + remove tmp trash
apt update -y && apt full-upgrade -y && apt autoremove -y && apt autoclean -y && apt clean -y
