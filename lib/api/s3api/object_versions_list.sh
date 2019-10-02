######################################################################
#<
#
# Function:
#	p6_aws_s3api_object_versions_list(bucket)
#
#  Args:
#	bucket - 
#
#>
######################################################################
p6_aws_s3api_object_versions_list() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api list-object-versions --bucket $bucket "$@"
}