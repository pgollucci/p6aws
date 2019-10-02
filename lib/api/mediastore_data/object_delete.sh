######################################################################
#<
#
# Function:
#	p6_aws_mediastore_data_object_delete(path)
#
#  Args:
#	path - 
#
#>
######################################################################
p6_aws_mediastore_data_object_delete() {
    local path="$1"
    shift 1

    p6_run_write_cmd aws mediastore-data delete-object --path $path "$@"
}