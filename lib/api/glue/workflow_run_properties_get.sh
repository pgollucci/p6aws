######################################################################
#<
#
# Function:
#      = p6_aws_glue_workflow_run_properties_get(name, run_id)
#
# Arg(s):
#    name - 
#    run_id - 
#
#
#>
######################################################################
p6_aws_glue_workflow_run_properties_get() {
    local name="$1"
    local run_id="$2"
    shift 2

    p6_run_read_cmd aws glue get-workflow-run-properties --name $name --run-id $run_id "$@"
}