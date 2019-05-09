p6_aws_mediaconvert_preset_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws mediaconvert delete-preset --name $name "$@"
}
