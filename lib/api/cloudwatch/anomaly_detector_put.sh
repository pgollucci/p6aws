######################################################################
#<
#
# Function:
#	p6_aws_cloudwatch_anomaly_detector_put(namespace, metric_name, stat)
#
#  Args:
#	namespace - 
#	metric_name - 
#	stat - 
#
#>
######################################################################
p6_aws_cloudwatch_anomaly_detector_put() {
    local namespace="$1"
    local metric_name="$2"
    local stat="$3"
    shift 3

    p6_run_write_cmd aws cloudwatch put-anomaly-detector --namespace $namespace --metric-name $metric_name --stat $stat "$@"
}