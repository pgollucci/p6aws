p6_aws_kms_alias_delete() {
    local alias_name="$1"
    shift 1

    p6_log_or_run aws kms delete-alias --alias-name $alias_name "$@"
}
