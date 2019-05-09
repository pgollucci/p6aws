p6_aws_s3_svc_bucket_list() {

    p6_aws_s3_ls s3://${1} --recursive --human-readable --summarize
}
