######################################################################
#<
#
# Function:
#      = p6_aws_kinesisvideo_stream_tag(tags)
#
# Arg(s):
#    tags - 
#
#
#>
######################################################################
p6_aws_kinesisvideo_stream_tag() {
    local tags="$1"
    shift 1

    p6_run_write_cmd aws kinesisvideo tag-stream --tags $tags "$@"
}