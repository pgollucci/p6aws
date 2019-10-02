######################################################################
#<
#
# Function:
#	p6_aws_s3api_object_copy(bucket, copy_source, key)
#
#  Args:
#	bucket - 
#	copy_source - 
#	key - 
#
#>
######################################################################
p6_aws_s3api_object_copy() {
    local bucket="$1"
    local copy_source="$2"
    local key="$3"
    shift 3

    p6_run_write_cmd aws s3api copy-object --bucket $bucket --copy-source $copy_source --key $key "$@"
}