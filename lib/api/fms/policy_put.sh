######################################################################
#<
#
# Function:
#      = p6_aws_fms_policy_put(policy)
#
# Arg(s):
#    policy - 
#
#
#>
######################################################################
p6_aws_fms_policy_put() {
    local policy="$1"
    shift 1

    p6_run_write_cmd aws fms put-policy --policy $policy "$@"
}