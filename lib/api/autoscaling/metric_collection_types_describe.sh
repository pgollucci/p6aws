######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_metric_collection_types_describe()
#
#
#
#>
######################################################################
p6_aws_autoscaling_metric_collection_types_describe() {

    p6_run_read_cmd aws autoscaling describe-metric-collection-types "$@"
}