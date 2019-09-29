######################################################################
#<
#
# Function:
#      = p6_aws_mediastore_data_object_get(path)
#
# Arg(s):
#    path - 
#
#
#>
######################################################################
p6_aws_mediastore_data_object_get() {
    local path="$1"
    shift 1

    p6_run_read_cmd aws mediastore-data get-object --path $path "$@"
}