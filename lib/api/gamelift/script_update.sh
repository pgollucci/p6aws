######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_script_update(script_id)
#
# Arg(s):
#    script_id - 
#
#
#>
######################################################################
p6_aws_gamelift_script_update() {
    local script_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-script --script-id $script_id "$@"
}