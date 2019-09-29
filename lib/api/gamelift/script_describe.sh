######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_script_describe(script_id)
#
# Arg(s):
#    script_id - 
#
#
#>
######################################################################
p6_aws_gamelift_script_describe() {
    local script_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-script --script-id $script_id "$@"
}