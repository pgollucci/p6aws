p6_aws_mediaconvert_preset_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws mediaconvert get-preset --name $name "$@"
}
