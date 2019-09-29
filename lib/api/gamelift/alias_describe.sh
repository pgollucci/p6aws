######################################################################
#<
#
# Function:
#      = p6_aws_gamelift_alias_describe(alias_id)
#
# Arg(s):
#    alias_id - 
#
#
#>
######################################################################
p6_aws_gamelift_alias_describe() {
    local alias_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-alias --alias-id $alias_id "$@"
}