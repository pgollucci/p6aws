######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_tags_from_stream_remove(stream_name, tag_keys)
#
# Arg(s):
#    stream_name - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_kinesis_tags_from_stream_remove() {
    local stream_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws kinesis remove-tags-from-stream --stream-name $stream_name --tag-keys $tag_keys "$@"
}