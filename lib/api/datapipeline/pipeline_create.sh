######################################################################
#<
#
# Function:
#      = p6_aws_datapipeline_pipeline_create(name, unique_id)
#
# Arg(s):
#    name - 
#    unique_id - 
#
#
#>
######################################################################
p6_aws_datapipeline_pipeline_create() {
    local name="$1"
    local unique_id="$2"
    shift 2

    p6_run_write_cmd aws datapipeline create-pipeline --name $name --unique-id $unique_id "$@"
}