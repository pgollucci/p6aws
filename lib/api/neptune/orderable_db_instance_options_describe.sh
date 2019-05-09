p6_aws_neptune_orderable_db_instance_options_describe() {
    local engine="$1"
    shift 1

    p6_log_and_run aws neptune describe-orderable-db-instance-options --engine $engine "$@"
}
