p6_aws_iotanalytics_pipeline_describe() {
    local pipeline_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics describe-pipeline --pipeline-name $pipeline_name "$@"
}
