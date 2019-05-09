p6_aws_cloudhsm_luna_client_create() {
    local certificate="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm create-luna-client --certificate $certificate "$@"
}
