p6_aws_iotanalytics_pipeline_create() {
    local pipeline_name="$1"
    local pipeline_activities="$2"
    shift 2

    p6_log_or_run aws iotanalytics create-pipeline --pipeline-name $pipeline_name --pipeline-activities $pipeline_activities "$@"
}
