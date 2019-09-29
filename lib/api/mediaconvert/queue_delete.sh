######################################################################
#<
#
# Function:
#      = p6_aws_mediaconvert_queue_delete(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_mediaconvert_queue_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert delete-queue --name $name "$@"
}