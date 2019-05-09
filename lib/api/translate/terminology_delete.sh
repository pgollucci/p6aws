p6_aws_translate_terminology_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws translate delete-terminology --name $name "$@"
}
