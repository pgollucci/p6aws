p6_aws_elastictranscoder_pipeline_update() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder update-pipeline --id $id "$@"
}
