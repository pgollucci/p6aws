p6_aws_worklink_out_user_sign() {
    local fleet_arn="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws worklink sign-out-user --fleet-arn $fleet_arn --username $username "$@"
}
