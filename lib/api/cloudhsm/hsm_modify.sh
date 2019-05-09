p6_aws_cloudhsm_hsm_modify() {
    local hsm_arn="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm modify-hsm --hsm-arn $hsm_arn "$@"
}
