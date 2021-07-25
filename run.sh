#!/bin/bash
cd ~

mkdir -p appacademy
cd appacademy

if [ ! -d Module-1-Resources ]; then
  git clone https://github.com/appacademy/Module-1-Resources.git
else
  cd Module-1-Resources

  remote=$(git remote)
  if [[ $remote == origin ]]; then
    git pull
  else
    git remote add origin https://github.com/appacademy/Module-1-Resources.git
    git pull --set-upstream origin main
  fi

  cd ../
fi

mkdir -p \
{w1,w2,w3}/{d1,d2,d3,d4,d5}/{lecture,projects,homework}
