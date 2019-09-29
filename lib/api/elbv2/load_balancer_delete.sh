######################################################################
#<
#
# Function:
#      = p6_aws_elbv2_load_balancer_delete(load_balancer_arn)
#
# Arg(s):
#    load_balancer_arn - 
#
#
#>
######################################################################
p6_aws_elbv2_load_balancer_delete() {
    local load_balancer_arn="$1"
    shift 1

    p6_run_write_cmd aws elbv2 delete-load-balancer --load-balancer-arn $load_balancer_arn "$@"
}