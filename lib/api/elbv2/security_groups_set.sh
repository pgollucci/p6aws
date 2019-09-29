######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_security_groups_set(load_balancer_arn, security_groups)
#
# Arg(s):
#    load_balancer_arn - 
#    security_groups - 
#
#
#>
######################################################################
p6_aws_elbv2_security_groups_set() {
    local load_balancer_arn="$1"
    local security_groups="$2"
    shift 2

    p6_run_write_cmd aws elbv2 set-security-groups --load-balancer-arn $load_balancer_arn --security-groups $security_groups "$@"
}