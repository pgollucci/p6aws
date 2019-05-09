p6_aws_kms_retirable_grants_list() {
    local retiring_principal="$1"
    shift 1

    p6_log_and_run aws kms list-retirable-grants --retiring-principal $retiring_principal "$@"
}
