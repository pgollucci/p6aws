p6_aws_rds_db_instance_from_s3_restore() {
    local db_instance_identifier="$1"
    local db_instance_class="$2"
    local engine="$3"
    local source_engine="$4"
    local source_engine_version="$5"
    local s3_bucket_name="$6"
    local s3_ingestion_role_arn="$7"
    shift 7

    p6_run_write_cmd aws rds restore-db-instance-from-s3 --db-instance-identifier $db_instance_identifier --db-instance-class $db_instance_class --engine $engine --source-engine $source_engine --source-engine-version $source_engine_version --s3-bucket-name $s3_bucket_name --s3-ingestion-role-arn $s3_ingestion_role_arn "$@"
}
