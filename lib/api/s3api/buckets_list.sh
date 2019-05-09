p6_aws_s3api_buckets_list() {

    p6_run_read_cmd aws s3api list-buckets "$@"
}
