p6_aws_redshift_encryption_key_rotate() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift rotate-encryption-key --cluster-identifier $cluster_identifier "$@"
}
