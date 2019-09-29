######################################################################
#<
#
# Function:
#      = p6_aws_s3api_bucket_metrics_configurations_list(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_bucket_metrics_configurations_list() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api list-bucket-metrics-configurations --bucket $bucket "$@"
}