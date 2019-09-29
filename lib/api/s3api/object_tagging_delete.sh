######################################################################
#<
#
# Function:
#      = p6_aws_s3api_object_tagging_delete(bucket, key)
#
# Arg(s):
#    bucket - 
#    key - 
#
#
#>
######################################################################
p6_aws_s3api_object_tagging_delete() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_write_cmd aws s3api delete-object-tagging --bucket $bucket --key $key "$@"
}