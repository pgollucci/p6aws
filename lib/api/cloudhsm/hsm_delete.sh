p6_aws_cloudhsm_hsm_delete() {
    local hsm_arn="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm delete-hsm --hsm-arn $hsm_arn "$@"
}
