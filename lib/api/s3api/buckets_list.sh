p6_aws_s3api_buckets_list() {

    p6_log_and_run aws s3api list-buckets "$@"
}
