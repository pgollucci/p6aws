######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_status_set(pipeline_id, object_ids, status)
#
# Arg(s):
#    pipeline_id - 
#    object_ids - 
#    status - 
#
#
#>
######################################################################
p6_aws_datapipeline_status_set() {
    local pipeline_id="$1"
    local object_ids="$2"
    local status="$3"
    shift 3

    p6_run_write_cmd aws datapipeline set-status --pipeline-id $pipeline_id --object-ids $object_ids --status $status "$@"
}