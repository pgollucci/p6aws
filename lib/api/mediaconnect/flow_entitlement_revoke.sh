######################################################################
#<
#
# Function:
#      = p6_aws_mediaconnect_flow_entitlement_revoke(entitlement_arn, flow_arn)
#
# Arg(s):
#    entitlement_arn - 
#    flow_arn - 
#
#
#>
######################################################################
p6_aws_mediaconnect_flow_entitlement_revoke() {
    local entitlement_arn="$1"
    local flow_arn="$2"
    shift 2

    p6_run_write_cmd aws mediaconnect revoke-flow-entitlement --entitlement-arn $entitlement_arn --flow-arn $flow_arn "$@"
}