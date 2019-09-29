######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_runs_list(pipeline_id)
#
# Arg(s):
#    pipeline_id - 
#
#
#>
######################################################################
p6_aws_datapipeline_runs_list() {
    local pipeline_id="$1"
    shift 1

    p6_run_read_cmd aws datapipeline list-runs --pipeline-id $pipeline_id "$@"
}