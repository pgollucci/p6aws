######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_tags_to_stream_add(stream_name, tags)
#
# Arg(s):
#    stream_name - 
#    tags - 
#
#
#>
######################################################################
p6_aws_kinesis_tags_to_stream_add() {
    local stream_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws kinesis add-tags-to-stream --stream-name $stream_name --tags $tags "$@"
}