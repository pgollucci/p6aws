p6_aws_cloudhsmv2_cluster_create() {
    local subnet_ids="$1"
    local hsm_type="$2"
    shift 2

    p6_run_write_cmd aws cloudhsmv2 create-cluster --subnet-ids $subnet_ids --hsm-type $hsm_type "$@"
}
