p6_aws_elastictranscoder_pipeline_read() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder read-pipeline --id $id "$@"
}
