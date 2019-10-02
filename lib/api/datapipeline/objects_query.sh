######################################################################
#<
#
# Function:
#	p6_aws_datapipeline_objects_query(pipeline_id, sphere)
#
#  Args:
#	pipeline_id - 
#	sphere - 
#
#>
######################################################################
p6_aws_datapipeline_objects_query() {
    local pipeline_id="$1"
    local sphere="$2"
    shift 2

    p6_run_write_cmd aws datapipeline query-objects --pipeline-id $pipeline_id --sphere $sphere "$@"
}