######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_alias_update(alias_id)
#
# Arg(s):
#    alias_id - 
#
#
#>
######################################################################
p6_aws_gamelift_alias_update() {
    local alias_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-alias --alias-id $alias_id "$@"
}