# Shell Scenario Modes
Logic color/style visualization to indicate what your script is doing or not.

## Visualization and indications by colors and styles
Provides scenarios you can call to maintain notifying in multiple levels
in your bash scripts, improving readability of the code, and of everything
that happens when running the script, by adding colors and messages in a
specific writing style, designed to speed up the whole scripting process
and organizing your script without having to spend time into doing so.

## Scenarios with their indicators and examples
| Scenario | Description                                                             | Example                                                                       | Start-scenario-indicators | Stop-scenario-indicators |
| :------: | ----------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ---------------------------------------------------- |
|  `FAIL`  | Some command failed hard, like epic fail, and you wanna say ittt!       | `echo -e "${FAIL} ERROR! Fatal error trying to redeploy your house!${LAIF}"`  | `${FAIL}`                 | `${LAIF}` or `${ALIF}`   |
|  `COOL`  | Some command was successful and you wanna celebr8 bigtimebruh!!!111one. | `echo -e "${COOL} YAY! Done glueing a spaceshuttle to your house!${LOCO}"`    | `${COOL}`                 | `${LOCO}` or `${LOOC}`   |
|  `BUSY`  | Something is bizzy, running, neither good or bad news, just wait4it.    | `echo -e "${BUSY} Scanning number of stolen bikes in ur backyard...${BUYS}"`  | `${BUSY}`                 | `${UBSY}` or `${BUYS}`   |
|  `INFO`  | Any important info — users, passwords, links, IPs, hostnames, GIVE MEH! | `echo -e "${INFO} Ik lust graag ${DATA}heul veul kaas${TADA} Snapte?${OFNI}"` | `${INFO}`                 | `${OFNI}` or `${NOIF}`   |
|  `DATA`  | Any important info — marked in cyan, to use inside of the INFO tags     | `echo -e "${INFO} Ik lust graag ${DATA}heul veul kaas${TADA} Snapte?${OFNI}"` | `${DATA}`                 | `${TADA}` or `${ATAD}`   |
