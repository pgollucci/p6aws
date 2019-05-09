p6_aws_iotanalytics_pipeline_reprocessing_start() {
    local pipeline_name="$1"
    shift 1

    p6_log_or_run aws iotanalytics start-pipeline-reprocessing --pipeline-name $pipeline_name "$@"
}
