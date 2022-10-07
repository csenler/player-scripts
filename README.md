Usage:

`./call_reset_with_sudo PASSWORD XIBO_CONFIG_PATH`

Example:

`./call_reset_with_sudo 1234 /home/svrn/xibo_config`


Note: if file endings get corrupted during transfer ->
`sed -i -e 's/\r$//' scriptname.sh`
    OR
use `dos2unix` if available

_______________________________________________________

Usage alternative which searches for player config path:
`./auto_config_reset.sh`


______________________________________________________

Usage to check xibo-player status:
`./check_xibo.sh`

To run script depending on player status (watchdog ON, player OFF):
`./check_xibo_then_run.sh SCRIPT_TO_RUN_PATH SCRIPT_TO_RUN_NAME_without_extension`
