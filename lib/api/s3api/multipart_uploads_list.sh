######################################################################
#<
#
# Function:
#      = p6_aws_s3api_multipart_uploads_list(bucket)
#
# Arg(s):
#    bucket - 
#
#
#>
######################################################################
p6_aws_s3api_multipart_uploads_list() {
    local bucket="$1"
    shift 1

    p6_run_read_cmd aws s3api list-multipart-uploads --bucket $bucket "$@"
}