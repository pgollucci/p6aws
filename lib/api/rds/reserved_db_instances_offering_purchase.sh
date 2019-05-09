p6_aws_rds_reserved_db_instances_offering_purchase() {
    local reserved_db_instances_offering_id="$1"
    shift 1

    p6_log_or_run aws rds purchase-reserved-db-instances-offering --reserved-db-instances-offering-id $reserved_db_instances_offering_id "$@"
}
