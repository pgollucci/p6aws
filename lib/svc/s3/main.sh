p6_aws_s3_svc_buckets_list() {

    p6_aws_s3_ls
}

p6_aws_s3_svc_bucket_list() {

    p6_aws_s3_ls s3://${1} --recursive --human-readable --summarize
}

p6_aws_s3_svc_bucket_policy() {

    p6_aws_s3api_bucket_policy_get "$@"
}
