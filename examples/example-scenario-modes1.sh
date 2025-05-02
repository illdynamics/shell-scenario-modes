#!/usr/bin/env bash
#
# Example shell script with shell-scenario-modes - User wants to install containerd package

# Load scenario modes and make all colors reset if the script crashes by any reason
. ./shell-scenario-modes.sh
echo -en "${RESET}"
trap 'echo -en "${RESET}"' EXIT

# Update packages and install containerd package
echo -e "${INFO}Welcome to my containerd install script!${OFNI}"                                                 # Just neutral information
echo -e "${INFO}Let's first update the package cache before we install anything.${OFNI}"                         # More neutral information
echo
apt update -y || echo -e "${FAIL}ERROR! Something went wrong trying to update the package manager cache!${LAIF}" # Update package cache, or give an error message with a red cross when package cache update fails
echo -e "${BUSY}Installing the required packages to user containers...${UBSY}"                                   # Indicate we start a process of installing a package, marked with a yellow star indicator
apt install -y containerd || echo -e "${FAIL}ERROR! Something went wrong trying to install packages!${LAIF}"     # If package failed to install, error out with a red cross style message
echo -e "${COOL}Successfully installed the required packages!${LOCO}"                                            # Indicate the package installation was successful, with a green checkmark in front of it
echo
echo -e "${INFO}To get started with the containerd commands, run the following command: ${DATA}ctr --help${TADA} (or check the manual page)${OFNI}" # Info message with important info marked in cyan, with an arrow in front of it
