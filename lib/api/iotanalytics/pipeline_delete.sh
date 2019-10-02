######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_pipeline_delete(pipeline_name)
#
#  Args:
#	pipeline_name - 
#
#>
######################################################################
p6_aws_iotanalytics_pipeline_delete() {
    local pipeline_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics delete-pipeline --pipeline-name $pipeline_name "$@"
}