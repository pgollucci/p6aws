######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_pipeline_reprocessing_start(pipeline_name)
#
#  Args:
#	pipeline_name - 
#
#>
######################################################################
p6_aws_iotanalytics_pipeline_reprocessing_start() {
    local pipeline_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics start-pipeline-reprocessing --pipeline-name $pipeline_name "$@"
}