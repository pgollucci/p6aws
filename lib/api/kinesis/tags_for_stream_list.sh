######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_tags_for_stream_list(stream_name)
#
# Arg(s):
#    stream_name - 
#
#
#>
######################################################################
p6_aws_kinesis_tags_for_stream_list() {
    local stream_name="$1"
    shift 1

    p6_run_read_cmd aws kinesis list-tags-for-stream --stream-name $stream_name "$@"
}