######################################################################
#<
#
# Function:
#      = p6_aws_s3api_objects_list(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_objects_list() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api list-objects --bucket $bucket "$@"
}