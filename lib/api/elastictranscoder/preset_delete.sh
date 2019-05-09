p6_aws_elastictranscoder_preset_delete() {
    local id="$1"
    shift 1

    p6_log_or_run aws elastictranscoder delete-preset --id $id "$@"
}
