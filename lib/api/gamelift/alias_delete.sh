######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_alias_delete(alias_id)
#
# Arg(s):
#    alias_id - 
#
#
#>
######################################################################
p6_aws_gamelift_alias_delete() {
    local alias_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-alias --alias-id $alias_id "$@"
}