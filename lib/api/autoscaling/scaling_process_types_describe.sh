######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_scaling_process_types_describe()
#
#>
######################################################################
p6_aws_autoscaling_scaling_process_types_describe() {

    p6_run_read_cmd aws autoscaling describe-scaling-process-types "$@"
}