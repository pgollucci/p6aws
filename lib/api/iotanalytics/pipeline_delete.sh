p6_aws_iotanalytics_pipeline_delete() {
    local pipeline_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics delete-pipeline --pipeline-name $pipeline_name "$@"
}
