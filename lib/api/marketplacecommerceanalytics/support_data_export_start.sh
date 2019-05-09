p6_aws_marketplacecommerceanalytics_support_data_export_start() {
    local data_set_type="$1"
    local from_date="$2"
    local role_name_arn="$3"
    local destination_s3_bucket_name="$4"
    local sns_topic_arn="$5"
    shift 5

    p6_run_write_cmd aws marketplacecommerceanalytics start-support-data-export --data-set-type $data_set_type --from-date $from_date --role-name-arn $role_name_arn --destination-s3-bucket-name $destination_s3_bucket_name --sns-topic-arn $sns_topic_arn "$@"
}
