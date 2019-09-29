######################################################################
#<
#
# Function:
#      = p6_aws_cloudwatch_alarms_for_metric_describe(metric_name, namespace)
#
# Arg(s):
#    metric_name - 
#    namespace - 
#
#
#>
######################################################################
p6_aws_cloudwatch_alarms_for_metric_describe() {
    local metric_name="$1"
    local namespace="$2"
    shift 2

    p6_run_read_cmd aws cloudwatch describe-alarms-for-metric --metric-name $metric_name --namespace $namespace "$@"
}