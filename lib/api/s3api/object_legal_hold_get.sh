######################################################################
#<
#
# Function:
#      = p6_aws_s3api_object_legal_hold_get(bucket, key)
#
# Arg(s):
#    bucket - 
#    key - 
#
#
#>
######################################################################
p6_aws_s3api_object_legal_hold_get() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_read_cmd aws s3api get-object-legal-hold --bucket $bucket --key $key "$@"
}