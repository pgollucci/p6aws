p6_aws_mediaconvert_preset_create() {
    local name="$1"
    local settings="$2"
    shift 2

    p6_log_or_run aws mediaconvert create-preset --name $name --settings $settings "$@"
}
