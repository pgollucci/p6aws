p6_aws_emr_cluster_create() {
    local release_label="$1"
    local instance_fleets="$2"
    shift 2

    p6_run_write_cmd aws emr create-cluster --release-label $release_label --instance-fleets $instance_fleets "$@"
}
