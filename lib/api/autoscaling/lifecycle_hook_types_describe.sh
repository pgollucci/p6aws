######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_lifecycle_hook_types_describe()
#
#
#
#>
######################################################################
p6_aws_autoscaling_lifecycle_hook_types_describe() {

    p6_run_read_cmd aws autoscaling describe-lifecycle-hook-types "$@"
}