p6_aws_elastictranscoder_pipeline_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder delete-pipeline --id $id "$@"
}
