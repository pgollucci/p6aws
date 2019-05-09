p6_aws_fms_admin_account_associate() {
    local admin_account="$1"
    shift 1

    p6_log_or_run aws fms associate-admin-account --admin-account $admin_account "$@"
}
