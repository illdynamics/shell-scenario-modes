#!/usr/bin/env bash #
# ⤴⤴⤴⤴⤴⤴⤴⤴⤴##############################################################
#                                                                                #
# This shebang will find the bash executable by running the env command, so it's #
# not hardcoded to the path /bin/bash, like with the usual #!/bin/bash shebang   #
#--------------------------------------------------------------------------------#
# This env variant is way better for cross-platform compatibility scripts!       #
#--------------------------------------------------------------------------------#
# Maybe some user compiled bash himself and installed it into /usr/sbin/bash, or #
# a user runs Mac OS and bash could be installed at /usr/local/bin/bash etc.     #
#--------------------------------------------------------------------------------#
# The bash executable will be found (if it's installed!), no matter where it is! #
#                                                                                #
##################################################################################
#                                                                                #
# Shell Scenario Modes - Visualization and indications by colors and styles      #
#                                                                                #
##################################################################################
#                                                                                #
# Provides scenarios you can call to maintain notifying in multiple levels       #
# in your bash scripts, improving readability of the code, and of everything     #
# that happens when running the script, by adding colors and messages in a       #
# specific writing style, designed to speed up the whole scripting process       #
# and organizing your script without having to spend time into doing so.         #
#                                                                                #
##################################################################################
#          #                                                                     #
# Scenario # Description and example of a scenario and how to use the mode in it #
#          #                                                                     #
##################################################################################
# - FAIL:  # Some command failed hard, like epic fail, and you wanna say ittt!   #
#--------------------------------------------------------------------------------#
# Example:                                                                       #
#    echo -e "${FAIL} ERROR! Fatal error trying to redeploy your house!${LAIF}"  #
#================================================================================#
# - COOL:  # Some command was successful n u wanna celebr8 bigtimebruh!!!111one. #
#--------------------------------------------------------------------------------#
# Example:                                                                       #
#    echo -e "${COOL} YAY! Done glueing a spaceshuttle to your house!${LOCO}"    #
#================================================================================#
# - BUSY:  # Something is bizzy, running, neither good or bad news, just wait4it #
#--------------------------------------------------------------------------------#
# Example:                                                                       #
#    echo -e "${BUSY} Scanning number of stolen bikes in ur backyard...${BUYS}"  #
#================================================================================#
# - INFO:  # Any important info, users/passwords, links, ip/hostnames, GIVE MEH! #
#--------------------------------------------------------------------------------#
# Example:                                                                       #
#    echo -e "${INFO} Ik lust graag ${IFNO}heul veul kaas${NOIF} Snapte?${OFNI}" #
##################################################################################

# Reset colors/color mode
RESET="\033[0m"           # turns off color all colors/color mode, back to default

# Cyan/Bold color's usage
BOLD="\033[1;36m"         # Cyan colored important messages/actions/text etc.

# Colors and their usage
RED="\033[1;31m"          # used for errors/fail messages/exit warnings/fatal situations/you broke your complete system etc.
GREEN="\033[1;32m"        # successful actions/processes/messages etc.
YELLOW="\033[1;33m"       # indication some event is happening/action is taken/something is detected/neutral events etc.
WHITE="\033[1;37m"        # standard text/standard output text of our scripts/messages/processes that don't need any red/green/yellow color indications
BLUE="\033[1;34m"         # used when outputting/supplying information to the user, i.e. usernames, passwords, URL's to login on the end of scripts etc.

# Symbols and their usage
STAR="${YELLOW}★${RESET}" # used with color yellow -> indication some event is happening/action is taken/something is detected/neutral events etc.
CHECK="${GREEN}✔${RESET}" # used with color green  -> successful actions/processes/messages etc.
CROSS="${RED}✗${RESET}"   # used with color red    -> used for errors/fail messages/exit warnings/fatal situations/you broke your complete system etc.
ARROW="${BLUE}→${RESET}"  # used with color yellow -> used when outputting/supplying information to the user, i.e. usernames, passwords, URL's to login on the end of scripts etc.

# Scenario modes
FAIL="${WHITE}[${CROSS}${WHITE}] "
BUSY="${WHITE}[${STAR}${WHITE}] "
COOL="${WHITE}[${CHECK}${WHITE}] "
