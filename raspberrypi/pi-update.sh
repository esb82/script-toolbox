#!/bin/bash

echo Betriebssystem wird aktualisiert...
sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove

echo Betriebssystem aktualisiert!