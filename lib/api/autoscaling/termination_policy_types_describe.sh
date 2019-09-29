######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_termination_policy_types_describe()
#
#
#
#>
######################################################################
p6_aws_autoscaling_termination_policy_types_describe() {

    p6_run_read_cmd aws autoscaling describe-termination-policy-types "$@"
}