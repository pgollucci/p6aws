######################################################################
#<
#
# Function:
#	p6_aws_mediastore_data_object_describe(path)
#
#  Args:
#	path - 
#
#>
######################################################################
p6_aws_mediastore_data_object_describe() {
    local path="$1"
    shift 1

    p6_run_read_cmd aws mediastore-data describe-object --path $path "$@"
}