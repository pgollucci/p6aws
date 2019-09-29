######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_alias_resolve(alias_id)
#
# Arg(s):
#    alias_id - 
#
#
#>
######################################################################
p6_aws_gamelift_alias_resolve() {
    local alias_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift resolve-alias --alias-id $alias_id "$@"
}