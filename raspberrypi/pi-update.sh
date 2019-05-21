#!/bin/bash

echo Betriebssystem wird aktualisiert!
sudo apt update && sudo apt upgrade && sudo apt -y autoremove

