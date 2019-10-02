######################################################################
#<
#
# Function:
#	p6_aws_s3api_object_torrent_get(bucket, key)
#
#  Args:
#	bucket - 
#	key - 
#
#>
######################################################################
p6_aws_s3api_object_torrent_get() {
    local bucket="$1"
    local key="$2"
    shift 2

    p6_run_read_cmd aws s3api get-object-torrent --bucket $bucket --key $key "$@"
}