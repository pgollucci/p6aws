p6_aws_iotanalytics_pipeline_activity_run() {
    local pipeline_activity="$1"
    local payloads="$2"
    shift 2

    p6_run_write_cmd aws iotanalytics run-pipeline-activity --pipeline-activity $pipeline_activity --payloads $payloads "$@"
}
