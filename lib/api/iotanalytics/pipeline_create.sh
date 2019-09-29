######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_pipeline_create(pipeline_name, pipeline_activities)
#
# Arg(s):
#    pipeline_name - 
#    pipeline_activities - 
#
#
#>
######################################################################
p6_aws_iotanalytics_pipeline_create() {
    local pipeline_name="$1"
    local pipeline_activities="$2"
    shift 2

    p6_run_write_cmd aws iotanalytics create-pipeline --pipeline-name $pipeline_name --pipeline-activities $pipeline_activities "$@"
}