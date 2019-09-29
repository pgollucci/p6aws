######################################################################
#<
#
# Function:
#      = p6_aws_s3api_object_lock_configuration_put(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_object_lock_configuration_put() {
    local bucket="$1"
    shift 1

    p6_run_write_cmd aws s3api put-object-lock-configuration --bucket $bucket "$@"
}